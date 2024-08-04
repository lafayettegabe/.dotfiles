{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    k3s
    kompose
    kubernetes
    kubectl
  ];

  # Docker service
  virtualisation.docker.enable = true;
  users.users.gabe.extraGroups = [ "docker" ];

 # systemd.services.k3s = {
 #   description = "K3s Kubernetes Service";
 #   wantedBy = [ "multi-user.target" ];
 #   serviceConfig = {
 #     ExecStart = "${pkgs.k3s}/bin/k3s server";
 #     Restart = "always";
 #     RestartSec = "10s";
 #   };
 # };
}
