/*
contributors: Patricio Gonzalez Vivo, Anton Marini
description: Porter Duff Source Atop Compositing
use: <float4> compositeSourceAtop(<float4> src, <float4> dst)
license:
    - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
    - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_COMPOSITE_SRC_ATOP
#define FNC_COMPOSITE_SRC_ATOP

float compositeSourceAtop(float src, float dst) {
    return src * dst + dst * (1.0 - src);
}

float3 compositeSourceAtop(float3 srcColor, float3 dstColor, float srcAlpha, float dstAlpha) {
    return srcColor * dstAlpha + dstColor * (1.0 - srcAlpha);
}

float4 compositeSourceAtop(float4 srcColor, float4 dstColor) {
    float4 result;

    result.rgb = compositeSourceAtop(srcColor.rgb, dstColor.rgb, srcColor.a, dstColor.a);
    result.a = compositeSourceAtop(srcColor.a, dstColor.a);

    return result;
}
#endif
