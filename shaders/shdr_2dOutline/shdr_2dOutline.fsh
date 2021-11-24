//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec2 u_resolution;

void main()
{
	vec2 sampleStep = vec2(1.0/1920.0, 1.0/1080.0);
	int outlineThickness = 2;
	
	vec4 fragColor = texture2D(gm_BaseTexture, v_vTexcoord);
	
	float alpha = 1.0;
	
	if(fragColor.a <= 0.01) {
		alpha = 0.0;
		for(int i = -outlineThickness; i < outlineThickness; i++) {
			for(int j = -outlineThickness; j < outlineThickness; j++) {
				vec2 sample = v_vTexcoord + vec2(sampleStep.x * float(i), sampleStep.y * float(j));
				sample.x = clamp(sample.x, 0.0, 1.0);
				sample.y = clamp(sample.y, 0.0, 1.0);
				vec4 sampleColor = texture2D( gm_BaseTexture, sample );
				if(sampleColor.a > 0.1) {
					alpha = 1.0;
					fragColor = vec4(1.0, 1.0, 1.0, 1.0);
				}
			}
		}
	}
	
	fragColor.a = alpha;
	
	
    gl_FragColor = fragColor;
}
