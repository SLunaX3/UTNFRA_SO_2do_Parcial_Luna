#!/bin/bash

# Ruta del repositorio
cd ~/repogit/UTN-FRA_SO_Examenes/202406/docker/

id
cat <<EOF | docker login -u sonialunax3 --password-stdin
dckr_pat_H3cad89dEuxSOmaJ5DQiBCF4MC8
EOF

# Modificar index.html
echo "<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Noviembre 2024 </h2> </br>
<h3> Sonia Luna </h3>
<h3> División: 115 </h3>
</div>" > index.html

# Crear Dockerfile
cat <<EOF > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

# Construir y pushear la imagen
docker build -t "SoniaLunaX3/web1-luna" .
docker push "SoniaLunaX3/web1-luna"

# Crear script run.sh
cat <<EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 "SoniaLunaX3/web1-luna"
EOF
