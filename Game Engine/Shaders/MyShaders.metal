//
//  MyShaders.metal
//  Game Engine
//
//  Created by Space on 10/8/18.
//

#include <metal_stdlib>
using namespace metal;

struct VertexIn{
    float3 position [[attribute(0)]];
    float4 colour [[attribute(1)]];
};

struct RasterizerData{
    float4 position [[position]];
    float4 colour ;
};
vertex RasterizerData basic_vertex_shader(const VertexIn vIn [[stage_in]]){
    
    RasterizerData rd;
    
    rd.position = float4(vIn.position, 1);
    rd.colour = vIn.colour;
    
    return rd;
    
}

fragment half4 basic_fragment_shader(RasterizerData rd [[stage_in]]){
    float4 colour = rd.colour;
    
    return half4(colour.r, colour.g, colour.b, colour.a);
}
