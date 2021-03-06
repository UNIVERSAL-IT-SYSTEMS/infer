(*
 * Copyright (c) 2013 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open! Utils

(** Module that contains constants and global state used in the frontend *)

(** Constants *)

val alloc : string
val array_with_objects_count_m : string
val assert_fail : string
val assert_rtn : string
val atomic_att : string
val autorelease : string
val block : string
val builtin_expect : string
val builtin_memset_chk : string
val builtin_object_size : string
val cf_alloc : string
val cf_autorelease : string
val cf_bridging_release : string
val cf_bridging_retain : string
val cf_non_null_alloc : string
val class_method : string
val class_type : string
val copy : string
val count : string
val drain : string
val emtpy_name_category : string
val enumerateObjectsUsingBlock : string
val fbAssertWithSignalAndLogFunctionHelper : string
val free : string
val google_LogMessageFatal : string
val google_MakeCheckOpString : string
val handleFailureInFunction : string
val handleFailureInMethod : string
val id_cl : string
val infer : string
val infer_skip_fun : string
val infer_skip_gcc_asm_stmt : string
val init : string
val invalid_pointer : int
val is_kind_of_class : string
val malloc : string
val mutableCopy : string
val new_str : string
val next_object : string
val ns_make_collectable : string
val nsarray_cl : string
val nsautorelease_pool_cl : string
val nsobject_cl : string
val nsstring_cl : string
val objc_class : string
val objc_object : string
val object_at_indexed_subscript_m : string
val objects : string
val pseudo_object_type : string
val release : string
val retain : string
val return_param : string
val self : string
val static : string
val string_with_utf8_m : string
val this : string
val void : string



(** Global state *)

(** Map from enum constants pointers to their predecesor and their sil value *)
val enum_map : (Clang_ast_t.pointer option * Sil.exp option) Clang_ast_main.PointerMap.t ref
val global_translation_unit_decls : Clang_ast_t.decl list ref
val ivar_to_property_index : Clang_ast_t.decl Clang_ast_main.PointerMap.t ref
val json : string ref
val pointer_decl_index : Clang_ast_t.decl Clang_ast_main.PointerMap.t ref
val pointer_stmt_index : Clang_ast_t.stmt Clang_ast_main.PointerMap.t ref
(** Map from clang pointers to types produced by ast exporter.  Populated once on InferClang
    startup *)
val pointer_type_index : Clang_ast_t.c_type Clang_ast_main.PointerMap.t ref
(** Map from type pointers (clang pointers and types created later by frontend) to sil types
    Populated during frontend execution when new type is found *)
val sil_types_map : (Typ.t Clang_ast_types.TypePointerMap.t) ref

