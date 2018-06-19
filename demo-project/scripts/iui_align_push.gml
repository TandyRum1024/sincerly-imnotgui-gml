#define iui_align_push
///iui_align_push(halign, valign)
/*
    Pushes the current align into the queue and sets to new align.
*/

ds_queue_enqueue(iui_alignQueue, iui_halign, iui_valign);
iui_halign = argument0;
iui_valign = argument1;

draw_set_halign(iui_halign);
draw_set_valign(iui_valign);

//show_debug_message("PUSH : ["+string(iui_halign)+","+string(iui_valign)+"] ("+string(ds_queue_size(iui_alignQueue))+")");

#define iui_align_pop
///iui_align_pop()
/*
    Pops the previous align from the queue and sets it to current one.
*/

iui_halign = ds_queue_dequeue(iui_alignQueue);
iui_valign = ds_queue_dequeue(iui_alignQueue);

draw_set_halign(iui_halign);
draw_set_valign(iui_valign);

//show_debug_message("POP : ["+string(iui_halign)+","+string(iui_valign)+"] ("+string(ds_queue_size(iui_alignQueue))+")");

#define iui_align_center
///iui_align_center();

iui_align_push(fa_center, fa_middle);