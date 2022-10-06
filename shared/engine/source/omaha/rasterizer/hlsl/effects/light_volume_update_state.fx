#ifndef _LIGHT_VOLUME_UPDATE_STATE_FX_
#define _LIGHT_VOLUME_UPDATE_STATE_FX_

#include "effects\function_definition.fx"
#include "effects\light_volume_property.fx"
#include "effects\light_volume_state.fx"
#include "effects\light_volume_strip.fx"

struct s_gpu_single_state_update
{
	float m_value;
};

struct s_overall_state_update
{
	float m_appearance_flags;
	float m_brightness_ratio;
	float m_offset;
	float m_num_profiles;
	float m_profile_distance;
	float m_profile_length;
	float3 m_origin;
	float3 m_direction;
	s_gpu_single_state_update m_inputs[_state_total_count];
};

struct s_light_volume_system_const_params
{
	s_property all_properties[_index_max];
	s_function_definition all_functions[_maximum_overall_function_count];
	float4 all_colors[_maximum_overall_color_count];
};

struct s_light_volume_system_update_params
{
	s_overall_state_update all_state;
};

#endif
