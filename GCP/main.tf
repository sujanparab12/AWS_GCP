resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = var.service_account_name
}

resource "google_dataproc_cluster" "mycluster" {
  name     =var.cluster_name
  region   = var.region
  graceful_decommission_timeout = var.graceful_decommission_timeout
  labels = var.labels

  cluster_config {
    staging_bucket = var.staging_bucket

    master_config {
      num_instances = var.no_of_instances
      machine_type  = var.compute_machine_name
      disk_config {
        boot_disk_type    = var.master_disk_type
        boot_disk_size_gb = var.master_disk_size
      }
    }

    worker_config {
      num_instances    = var.primary_worker_min_instances
      machine_type     =var.worker_instance_type
      min_cpu_platform = var.min_cpu_platform
      disk_config {
        boot_disk_size_gb = var.disk_size
        num_local_ssds    = var.master_local_ssd
      }
    }

    preemptible_worker_config {
      num_instances = 0
    }

    # Override or set some custom properties
    software_config {
      image_version = var.cluster_version
      override_properties = {
        "dataproc:dataproc.allow.zero.workers" = "true"
      }
    }

    gce_cluster_config {
      tags = ["foo", "bar"]
      # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
      service_account = google_service_account.default.email
      service_account_scopes = [
        "cloud-platform"
      ]
    }

    # You can define multiple initialization_action blocks
    initialization_action {
      script      = "gs://dataproc-initialization-actions/stackdriver/stackdriver.sh"
      timeout_sec = var.initialization_timeout_sec
    }
  }
}