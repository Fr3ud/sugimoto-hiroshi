uniform sampler2D uTexture;
uniform float time;

varying float pulse;
varying vec2 vUv;

void main() {
    vec4 myImage = texture(
        uTexture, 
        // vUv + 0.01 * sin(vUv * 20. + time) // trip
        vUv + 0.2 * sin(vUv * 50. + time) // distorsion 
    );
    
    // gl_FragColor = vec4( vUv,0.,1. );
    gl_FragColor = myImage;
}
