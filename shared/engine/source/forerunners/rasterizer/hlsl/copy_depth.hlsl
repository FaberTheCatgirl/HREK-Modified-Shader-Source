#line 2 "source\rasterizer\hlsl\copy_depth.hlsl"

#include "global.fx"
#include "hlsl_vertex_types.fx"
#include "utilities.fx"
#include "postprocess.fx"
//@generate screen

LOCAL_SAMPLER_2D_IN_VIEWPORT_MAYBE(source_sampler, 0);

float default_ps(screen_output IN) : SV_Depth
{
 	return sample2D(source_sampler, IN.texcoord * ps_postprocess_scale.xy).x;
}
