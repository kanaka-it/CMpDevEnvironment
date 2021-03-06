module "component" {
    # source = "git::https://github.com/Crown-Commercial-Service/CMpDevEnvironment.git//terraform/modules/component"
    source = "../../modules/component"

    type = "app"
    prefix = "ccs"
    name = "maintenance"
    hostname = "unavailable"
    catch_all = true
    build_type = "docker"
    github_owner = "Crown-Commercial-Service"
    github_repo = "crown-marketplace-maintenance"
    github_branch = "master"
    github_token_alias = "ccs-build_github_token"
    cluster_name = "CCSDEV_app_cluster"
    task_count = 3
    environment = [
    ]
    port = "80"
}
