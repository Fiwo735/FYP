//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input_t data_in[N_INPUT],
    result_t data_out[N_LABELS],
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1
) {

    //hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=fc1_input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer13_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=fc1_input,layer13_out 
    #pragma HLS PIPELINE 

    const_size_in_1 = N_INPUT;
    const_size_out_1 = N_LABELS;

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        //hls-fpga-machine-learning insert load weights
        std::cout << "Loading weights from txt" << "\n";
        
        nnet::load_weights_from_txt<model_default_t, 128>(cls_token, "cls_token.txt");
        nnet::load_weights_from_txt<model_default_t, 2048>(inp_layer_weight, "inp_layer_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(inp_layer_bias, "inp_layer_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(out_layer_0_weight, "out_layer_0_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(out_layer_0_bias, "out_layer_0_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 640>(out_layer_1_weight, "out_layer_1_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 5>(out_layer_1_bias, "out_layer_1_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_0_self_attention_norm_weight, "transformers_0_self_attention_norm_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_0_self_attention_norm_bias, "transformers_0_self_attention_norm_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 49152>(transformers_0_self_attention_qkv_weight, "transformers_0_self_attention_qkv_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 16384>(transformers_0_self_attention_out_weight, "transformers_0_self_attention_out_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_0_self_attention_out_bias, "transformers_0_self_attention_out_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_0_linear_0_weight, "transformers_0_linear_0_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_0_linear_0_bias, "transformers_0_linear_0_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 32768>(transformers_0_linear_2_weight, "transformers_0_linear_2_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 256>(transformers_0_linear_3_weight, "transformers_0_linear_3_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 256>(transformers_0_linear_3_bias, "transformers_0_linear_3_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 32768>(transformers_0_linear_5_weight, "transformers_0_linear_5_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_1_self_attention_norm_weight, "transformers_1_self_attention_norm_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_1_self_attention_norm_bias, "transformers_1_self_attention_norm_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 49152>(transformers_1_self_attention_qkv_weight, "transformers_1_self_attention_qkv_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 16384>(transformers_1_self_attention_out_weight, "transformers_1_self_attention_out_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_1_self_attention_out_bias, "transformers_1_self_attention_out_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_1_linear_0_weight, "transformers_1_linear_0_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_1_linear_0_bias, "transformers_1_linear_0_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 32768>(transformers_1_linear_2_weight, "transformers_1_linear_2_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 256>(transformers_1_linear_3_weight, "transformers_1_linear_3_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 256>(transformers_1_linear_3_bias, "transformers_1_linear_3_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 32768>(transformers_1_linear_5_weight, "transformers_1_linear_5_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_2_self_attention_norm_weight, "transformers_2_self_attention_norm_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_2_self_attention_norm_bias, "transformers_2_self_attention_norm_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 49152>(transformers_2_self_attention_qkv_weight, "transformers_2_self_attention_qkv_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 16384>(transformers_2_self_attention_out_weight, "transformers_2_self_attention_out_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_2_self_attention_out_bias, "transformers_2_self_attention_out_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_2_linear_0_weight, "transformers_2_linear_0_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 128>(transformers_2_linear_0_bias, "transformers_2_linear_0_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 32768>(transformers_2_linear_2_weight, "transformers_2_linear_2_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 256>(transformers_2_linear_3_weight, "transformers_2_linear_3_weight.txt");
        nnet::load_weights_from_txt<model_default_t, 256>(transformers_2_linear_3_bias, "transformers_2_linear_3_bias.txt");
        nnet::load_weights_from_txt<model_default_t, 32768>(transformers_2_linear_5_weight, "transformers_2_linear_5_weight.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    //hls-fpga-machine-learning insert layers
    std::ofstream fout("tb_data/csim_layers.log");

    fout << "data_in:" << "\n";
    nnet::print_result<input_t, N_INPUT>(data_in, fout);

    // 1 input embedding
    input_t embedded_input[N_EMBEDDED];
    nnet::dense<input_t, input_t, embedded_config>(data_in, embedded_input, inp_layer_weight, inp_layer_bias);
    fout << "embedded_input:" << "\n";
    nnet::print_result<input_t, N_EMBEDDED>(embedded_input, fout);

    // 2 class token
    input_t embedded_with_cls[N_TRANSFORMER];
    cls1: for (int icls1 = 0; icls1 < N_EMBEDDED; icls1++) {
        embedded_with_cls[icls1] = embedded_input[icls1];
    }
    cls2: for (int icls2 = 0; icls2 < N_BATCH_SIZE; icls2++) {
        embedded_with_cls[N_TRANSFORMER + icls2] = cls_token[icls2];
    }
    fout << "class token sum:" << "\n";
    nnet::print_result<input_t, N_TRANSFORMER>(embedded_with_cls, fout);

    // 3.1 jet transformer
    input_t transformer_0_out[N_TRANSFORMER];
    nnet::transformer<input_t, input_t, transformer_config0>(
        embedded_with_cls,
        transformer_0_out,

        transformers_0_self_attention_norm_weight,
        transformers_0_self_attention_norm_bias,
        transformers_0_self_attention_qkv_weight,
        transformers_0_self_attention_out_weight,
        transformers_0_self_attention_out_bias,

        transformers_0_linear_0_weight,
        transformers_0_linear_0_bias,
        transformers_0_linear_2_weight,
        transformers_0_linear_3_weight,
        transformers_0_linear_3_bias,
        transformers_0_linear_5_weight
    );
    fout << "transformer_0_out:" << "\n";
    nnet::print_result<input_t, N_TRANSFORMER>(transformer_0_out, fout);

    // 3.2 jet transformer
    input_t transformer_1_out[N_TRANSFORMER];
    nnet::transformer<input_t, input_t, transformer_config0>(
        transformer_0_out,
        transformer_1_out,

        transformers_1_self_attention_norm_weight,
        transformers_1_self_attention_norm_bias,
        transformers_1_self_attention_qkv_weight,
        transformers_1_self_attention_out_weight,
        transformers_1_self_attention_out_bias,

        transformers_1_linear_0_weight,
        transformers_1_linear_0_bias,
        transformers_1_linear_2_weight,
        transformers_1_linear_3_weight,
        transformers_1_linear_3_bias,
        transformers_1_linear_5_weight
    );
    fout << "transformer_1_out:" << "\n";
    nnet::print_result<input_t, N_TRANSFORMER>(transformer_1_out, fout);

    // 3.3 jet transformer
    input_t transformer_2_out[N_TRANSFORMER];
    nnet::transformer<input_t, input_t, transformer_config0>(
        transformer_1_out,
        transformer_2_out,

        transformers_2_self_attention_norm_weight,
        transformers_2_self_attention_norm_bias,
        transformers_2_self_attention_qkv_weight,
        transformers_2_self_attention_out_weight,
        transformers_2_self_attention_out_bias,

        transformers_2_linear_0_weight,
        transformers_2_linear_0_bias,
        transformers_2_linear_2_weight,
        transformers_2_linear_3_weight,
        transformers_2_linear_3_bias,
        transformers_2_linear_5_weight
    );
    fout << "transformer_2_out:" << "\n";
    nnet::print_result<input_t, N_TRANSFORMER>(transformer_2_out, fout);

    // 4.1 MLP dimension reduction
    input_t mlp_dimensions_reduced[N_BATCH_SIZE];
    mlp_dim: for (int imlp = 0; imlp < N_BATCH_SIZE; imlp++) {
        mlp_dimensions_reduced[imlp] = transformer_2_out[imlp];
    }
    fout << "mlp_dimensions_reduced:" << "\n";
    nnet::print_result<input_t, N_BATCH_SIZE>(mlp_dimensions_reduced, fout);

    // 4.2 MLP normalization
    input_t mlp_norm[N_BATCH_SIZE];
    nnet::normalize<input_t, input_t, normalize_config0>(mlp_dimensions_reduced, mlp_norm, out_layer_0_weight, out_layer_0_bias);
    fout << "mlp_norm:" << "\n";
    nnet::print_result<input_t, N_BATCH_SIZE>(mlp_norm, fout);

    // 4.3 MLP dense
    input_t mlp_out[N_LABELS];
    nnet::dense<input_t, input_t, mlp_config>(mlp_norm, mlp_out, out_layer_1_weight, out_layer_1_bias);
    fout << "mlp_out:" << "\n";
    nnet::print_result<input_t, N_LABELS>(mlp_out, fout);

    // 5 softmax
    nnet::softmax<input_t, result_t, softmax_config0>(mlp_out, data_out);
    fout << "data_out:" << "\n";
    nnet::print_result<result_t, N_LABELS>(data_out, fout);
}
