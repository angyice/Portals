// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "MaskedObjectShader01"
{
	Properties
	{
		_fi_village_floor_stone03_hd("fi_village_floor_stone03_hd", 2D) = "white" {}
		_fi_village_floor_stone03_hd_ao("fi_village_floor_stone03_hd_ao", 2D) = "white" {}
		_fi_village_floor_stone03_hd_n("fi_village_floor_stone03_hd_n", 2D) = "bump" {}
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

		uniform sampler2D _fi_village_floor_stone03_hd_n;
		uniform float4 _fi_village_floor_stone03_hd_n_ST;
		uniform sampler2D _fi_village_floor_stone03_hd;
		uniform float4 _fi_village_floor_stone03_hd_ST;
		uniform sampler2D _fi_village_floor_stone03_hd_ao;
		uniform float4 _fi_village_floor_stone03_hd_ao_ST;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_fi_village_floor_stone03_hd_n = i.uv_texcoord * _fi_village_floor_stone03_hd_n_ST.xy + _fi_village_floor_stone03_hd_n_ST.zw;
			o.Normal = UnpackNormal( tex2D( _fi_village_floor_stone03_hd_n, uv_fi_village_floor_stone03_hd_n ) );
			float2 uv_fi_village_floor_stone03_hd = i.uv_texcoord * _fi_village_floor_stone03_hd_ST.xy + _fi_village_floor_stone03_hd_ST.zw;
			o.Albedo = tex2D( _fi_village_floor_stone03_hd, uv_fi_village_floor_stone03_hd ).rgb;
			float2 uv_fi_village_floor_stone03_hd_ao = i.uv_texcoord * _fi_village_floor_stone03_hd_ao_ST.xy + _fi_village_floor_stone03_hd_ao_ST.zw;
			o.Occlusion = tex2D( _fi_village_floor_stone03_hd_ao, uv_fi_village_floor_stone03_hd_ao ).r;
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
Node;AmplifyShaderEditor.SamplerNode;2;-384.0833,-53.96056;Inherit;True;Property;_fi_village_floor_stone03_hd;fi_village_floor_stone03_hd;0;0;Create;True;0;0;False;0;False;-1;6b236461e35b0d7499220e99839ff390;6b236461e35b0d7499220e99839ff390;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;3;-408.8571,429.9535;Inherit;True;Property;_fi_village_floor_stone03_hd_ao;fi_village_floor_stone03_hd_ao;1;0;Create;True;0;0;False;0;False;-1;a9564f54d0e71ab4b8b733f610d579fb;a9564f54d0e71ab4b8b733f610d579fb;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;4;-402.2508,160.7457;Inherit;True;Property;_fi_village_floor_stone03_hd_n;fi_village_floor_stone03_hd_n;2;0;Create;True;0;0;False;0;False;-1;b0cf5d58a6bade2469113054bef0f30f;b0cf5d58a6bade2469113054bef0f30f;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;MaskedObjectShader01;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;14;all;True;True;True;True;0;False;-1;True;1;False;-1;255;False;-1;255;False;-1;5;False;-1;1;False;-1;1;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;2;0
WireConnection;0;1;4;0
WireConnection;0;5;3;0
ASEEND*/
//CHKSM=77EAE75031398C93905F72A2417C3FCF74CA6757