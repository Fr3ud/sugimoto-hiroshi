uniform float time;

void main() {
    vec3 newPosition = position ;
    newPosition.z = 0.1 * sin(newPosition.x * 30. + time);
    gl_Position = projectionMatrix * modelViewMatrix * vec4( newPosition, 1.0 );
}
