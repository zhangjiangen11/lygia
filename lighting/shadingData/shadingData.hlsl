/*
contributors:  Shadi El Hajj
description: Structure to hold shading variables
license: MIT License (MIT) Copyright (c) 2024 Shadi EL Hajj
*/

#ifndef STR_SHADING_DATA
#define STR_SHADING_DATA

struct ShadingData {
   float3 V;
   float3 N;
   float3 H;
   float3 L;
   float3 R;

   float NoV;
   float NoL;
   float NoH;

   float fresnel;
   float roughness;
   float linearRoughness;
   float3 diffuseColor;
   float3 specularColor;

   float3 diffuse;
   float3 specular;
};

#endif