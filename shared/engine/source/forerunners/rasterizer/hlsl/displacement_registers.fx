/*
DISPLACEMENT_REGISTERS.FX
Copyright (c) Microsoft Corporation, 2007. all rights reserved.
3/21/2007 4:57:42 PM (davcook)
	
*/

CBUFFER_BEGIN(DisplacementPS)
	CBUFFER_CONST(DisplacementPS,			float4,		ps_displacement_screen_constants,			k_ps_displacement_screen_constants)
	CBUFFER_CONST(DisplacementPS,			float4x4, 	ps_displacement_previous_view_projection, 	k_ps_displacement_previous_view_projection)
	CBUFFER_CONST(DisplacementPS,			float4x4, 	ps_displacement_screen_to_world, 			k_ps_displacement_screen_to_world)
CBUFFER_END

CBUFFER_BEGIN(DisplacementMotionBlurPS)
	CBUFFER_CONST(DisplacementMotionBlurPS,	int,		ps_displacement_num_taps,					k_ps_displacement_num_taps)
	CBUFFER_CONST(DisplacementMotionBlurPS,	int3,		ps_displacement_num_taps_pad,				k_ps_displacement_num_taps_pad)
	CBUFFER_CONST(DisplacementMotionBlurPS,	float4, 	ps_displacement_misc_values, 				k_ps_displacement_misc_values)
	CBUFFER_CONST(DisplacementMotionBlurPS,	float4, 	ps_displacement_blur_max_and_scale, 		k_ps_displacement_blur_max_and_scale)
	CBUFFER_CONST(DisplacementMotionBlurPS,	float4, 	ps_displacement_crosshair_center, 			k_ps_displacement_crosshair_center)
	CBUFFER_CONST(DisplacementMotionBlurPS,	bool,		ps_displacement_do_distortion,				k_ps_displacement_do_distortion)
CBUFFER_END


