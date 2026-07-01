import React, { useState, useEffect } from 'react';
import { View, Text, ActivityIndicator } from 'react-native';

const API_URL = 'https://jsonplaceholder.typicode.com/users';

export default function Perfil() {
  const [usuario, setUsuario] = useState(null);
  const [cargando, setCargando] = useState(true);

  useEffect(() => {
    // TODO: Usa fetch para obtener los datos de:
    // https://jsonplaceholder.typicode.com/users/1
    // Guarda el resultado en "usuario" con setUsuario
    // y cambia "cargando" a false cuando finalice
    /* tu código aquí */
    const cargarUsuario = async () => {
      try {
        const response = await fetch(`${API_URL}/1`);
        const data = await response.json();
        setUsuario(data);
      } catch (error) {
        console.error('Error al cargar el usuario:', error);
        setUsuario(null);
      } finally {
        setCargando(false);
      }
    };

    cargarUsuario();
  }, []);

  if (cargando) return <ActivityIndicator />;

  return (
    <View>
      <Text>{usuario?.name}</Text>
    </View>
  );
}