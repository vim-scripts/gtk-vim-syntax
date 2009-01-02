" Vim syntax file
" Language: C librsvg extension (for version 2.22.3)
" Maintainer: David Nečas (Yeti) <yeti@physics.muni.cz>
" Last Change: 2009-01-02
" URL: http://physics.muni.cz/~yeti/vim/gtk-syntax.tar.gz
" Generated By: vim-syn-gen.py
" Options:
"    Deprecated declarations are not highlighted by default.
"    let librsvg_enable_deprecated = 1
"       highlights deprecated declarations too (like normal declarations)
"    let librsvg_deprecated_errors = 1
"       highlights deprecated declarations as Errors

syn keyword librsvgFunction args_fini args_init args_parse args_print lpyramid_create lpyramid_destroy lpyramid_get_value pdiff_compare rsvg_alpha_blt rsvg_art_affine_image rsvg_cairo_add_clipping_rect rsvg_cairo_clip rsvg_cairo_create_pango_context rsvg_cairo_get_image_of_node rsvg_cairo_pop_discrete_layer rsvg_cairo_push_discrete_layer rsvg_cairo_render_image rsvg_cairo_render_new rsvg_cairo_render_pango_layout rsvg_cairo_render_path rsvg_cairo_render_rsvg_handle rsvg_cairo_to_pixbuf rsvg_clip_path_parse rsvg_error_get_type rsvg_error_quark rsvg_filter_adobe_blend rsvg_filter_parse rsvg_filter_render rsvg_get_file_path rsvg_handle_close rsvg_handle_get_base_uri rsvg_handle_get_desc rsvg_handle_get_dimensions rsvg_handle_get_metadata rsvg_handle_get_pixbuf rsvg_handle_get_pixbuf_sub rsvg_handle_get_title rsvg_handle_get_type rsvg_handle_new rsvg_handle_new_from_data rsvg_handle_new_from_file rsvg_handle_render_cairo rsvg_handle_render_cairo_sub rsvg_handle_set_base_uri rsvg_handle_set_dpi rsvg_handle_set_dpi_x_y rsvg_handle_write rsvg_init rsvg_marker_parse rsvg_marker_render rsvg_mask_parse rsvg_new_clip_path rsvg_new_defs rsvg_new_filter rsvg_new_filter_primitive_blend rsvg_new_filter_primitive_colour_matrix rsvg_new_filter_primitive_component_transfer rsvg_new_filter_primitive_composite rsvg_new_filter_primitive_convolve_matrix rsvg_new_filter_primitive_diffuse_lighting rsvg_new_filter_primitive_displacement_map rsvg_new_filter_primitive_erode rsvg_new_filter_primitive_flood rsvg_new_filter_primitive_gaussian_blur rsvg_new_filter_primitive_image rsvg_new_filter_primitive_light_source rsvg_new_filter_primitive_merge rsvg_new_filter_primitive_merge_node rsvg_new_filter_primitive_offset rsvg_new_filter_primitive_specular_lighting rsvg_new_filter_primitive_tile rsvg_new_filter_primitive_turbulence rsvg_new_group rsvg_new_image rsvg_new_marker rsvg_new_mask rsvg_new_node_component_transfer_function rsvg_new_svg rsvg_new_switch rsvg_new_symbol rsvg_new_use rsvg_node_draw rsvg_node_group_pack rsvg_pixbuf_new_from_href rsvg_pixbuf_to_cairo rsvg_pop_def_group rsvg_preserve_aspect_ratio rsvg_render_markers rsvg_set_default_dpi rsvg_set_default_dpi_x_y rsvg_term
syn keyword librsvgTypedef RsvgFilterUnits RsvgHandlePrivate RsvgMaskUnits bool lpyramid_t
syn keyword librsvgConstant RSVG_ERROR_FAILED
syn keyword librsvgStruct RsvgCairoRender RsvgClipPath RsvgDimensionData RsvgFilter RsvgHandle RsvgHandleClass RsvgMarker RsvgMask RsvgNodeGroup RsvgNodeImage RsvgNodeSvg RsvgNodeSymbol RsvgNodeUse
syn keyword librsvgMacro RSVG_HANDLE RSVG_HANDLE_CLASS RSVG_HANDLE_GET_CLASS RSVG_IS_HANDLE RSVG_IS_HANDLE_CLASS
syn keyword librsvgEnum RsvgError
syn keyword librsvgDefine MAX_PYR_LEVELS RSVG_ERROR RSVG_TYPE_ERROR RSVG_TYPE_HANDLE false true
syn keyword librsvgDeprecatedFunction rsvg_handle_free rsvg_handle_set_size_callback rsvg_pixbuf_from_file rsvg_pixbuf_from_file_at_max_size rsvg_pixbuf_from_file_at_size rsvg_pixbuf_from_file_at_zoom rsvg_pixbuf_from_file_at_zoom_with_max
syn keyword librsvgDeprecatedUserFunction RsvgSizeFunc

" Default highlighting
if version >= 508 || !exists("did_librsvg_syntax_inits")
  if version < 508
    let did_librsvg_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink librsvgFunction Function
  HiLink librsvgTypedef Type
  HiLink librsvgConstant Constant
  HiLink librsvgStruct Type
  HiLink librsvgMacro Macro
  HiLink librsvgEnum Type
  HiLink librsvgDefine Constant
  if exists("librsvg_deprecated_errors")
    HiLink librsvgDeprecatedFunction Error
    HiLink librsvgDeprecatedUserFunction Error
  elseif exists("librsvg_enable_deprecated")
    HiLink librsvgDeprecatedFunction Function
    HiLink librsvgDeprecatedUserFunction Type
  endif

  delcommand HiLink
endif

