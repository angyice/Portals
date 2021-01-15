// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "MaskedObjectShader01"
{
	Properties
	{
		_fi_village_floor_wood04_hd("fi_village_floor_wood04_hd", 2D) = "white" {}
		_fi_village_floor_wood04_hd_n("fi_village_floor_wood04_hd_n", 2D) = "bump" {}
		_fi_village_floor_wood04_hd_ao("fi_village_floor_wood04_hd_ao", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		Stencil
		{
			Ref 1
			Comp Equal
			Pass Keep
			Fail Keep
		}
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _fi_village_floor_wood04_hd_n;
		uniform float4 _fi_village_floor_wood04_hd_n_ST;
		uniform sampler2D _fi_village_floor_wood04_hd;
		uniform float4 _fi_village_floor_wood04_hd_ST;
		uniform sampler2D _fi_village_floor_wood04_hd_ao;
		uniform float4 _fi_village_floor_wood04_hd_ao_ST;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_fi_village_floor_wood04_hd_n = i.uv_texcoord * _fi_village_floor_wood04_hd_n_ST.xy + _fi_village_floor_wood04_hd_n_ST.zw;
			o.Normal = UnpackNormal( tex2D( _fi_village_floor_wood04_hd_n, uv_fi_village_floor_wood04_hd_n ) );
			float2 uv_fi_village_floor_wood04_hd = i.uv_texcoord * _fi_village_floor_wood04_hd_ST.xy + _fi_village_floor_wood04_hd_ST.zw;
			o.Albedo = tex2D( _fi_village_floor_wood04_hd, uv_fi_village_floor_wood04_hd ).rgb;
			float2 uv_fi_village_floor_wood04_hd_ao = i.uv_texcoord * _fi_village_floor_wood04_hd_ao_ST.xy + _fi_village_floor_wood04_hd_ao_ST.zw;
			o.Occlusion = tex2D( _fi_village_floor_wood04_hd_ao, uv_fi_village_floor_wood04_hd_ao ).r;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18703
1156;430;1084;572;988.5632;255.4538;1.651584;True;True
Node;AmplifyShaderEditor.SamplerNode;2;-372.5223,-50.65739;Inherit;True;Property;_fi_village_floor_wood04_hd;fi_village_floor_wood04_hd;0;0;Create;True;0;0;False;0;False;-1;f563c00f4bb6d8f42bb9b36f7fb1e4ab;f563c00f4bb6d8f42bb9b36f7fb1e4ab;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;3;-395.6444,170.6549;Inherit;True;Property;_fi_village_floor_wood04_hd_n;fi_village_floor_wood04_hd_n;1;0;Create;True;0;0;False;0;False;-1;6ee73863a715f334bbe17fd2b11210e7;6ee73863a715f334bbe17fd2b11210e7;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;4;-377.477,334.1618;Inherit;True;Property;_fi_village_floor_wood04_hd_ao;fi_village_floor_wood04_hd_ao;2;0;Create;True;0;0;False;0;False;-1;84bb0329d403cd04591499918c1a9146;84bb0329d403cd04591499918c1a9146;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;MaskedObjectShader01;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;14;all;True;True;True;True;0;False;-1;True;1;False;-1;255;False;-1;255;False;-1;5;False;-1;1;False;-1;1;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;2;0
WireConnection;0;1;3;0
WireConnection;0;5;4;0
ASEEND*/
//CHKSM=C07AB7F2B1006015C50272F1C7E72BA32F15BEFD