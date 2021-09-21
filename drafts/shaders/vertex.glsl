uniform float time;

varying float pulse;
varying vec2 vUv;

void main() {
    vec3 newPosition = position;
    vUv = uv;

    newPosition.z = 0.05 * sin( length(position) * 30. + time );
    pulse = 20. * newPosition.z;
    gl_Position = projectionMatrix * modelViewMatrix * vec4( newPosition, 1.0 );
}
