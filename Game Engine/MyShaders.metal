//
//  MyShaders.metal
//  Game Engine
//
//  Created by SpaceMan on 10/8/18.
//  Copyright © 2018 Space. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;

vertex float4 basic_vertex_shader(){
    return float4(1);
    
}

fragment half4 basic_fragment_shader(){
    return half4(1);
}
