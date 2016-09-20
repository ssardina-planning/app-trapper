(define (domain upp)
(:requirements :typing :action-costs)
(:types  size_t location_t side_t color_t image_t resource_t sheet_t)
(:constants
		Letter - size_t

		Black
		Color - color_t

		Front
		Back - side_t

		Some_Feeder_Tray
		Some_Finisher_Tray
		EndCap_Entry-BlackContainer_Exit
		HtmOverBlack_Entry-EndCap_Exit
		HtmOverBlack_Exit-Down_TopEntry
		ColorContainer_Entry-Down_BottomExit
		ColorContainer_ExitToIME-ColorPrinter_Entry
		ColorPrinter_Exit-ColorContainer_EntryFromIME
		ColorContainer_Exit-Up_BottomEntry
		Down_BottomEntry-ColorFeeder_Exit
		BlackContainer_Entry-BlackFeeder_Exit
		Down_TopExit-HtmOverColor_Entry
		HtmOverColor_Exit-Up_TopEntry
		BlackContainer_ExitToIME-BlackPrinter_Entry
		BlackPrinter_Exit-BlackContainer_EntryFromIME
		Finisher1_Entry-Up_TopExit
		Finisher2_Entry-Finisher1_Exit
		Finisher1_Tray
		Finisher2_Exit
		Finisher2_Tray - location_t

		EndCap-RSRC
		HtmOverBlack-RSRC
		ColorContainer-RSRC
		ColorPrinter-RSRC
		ColorFeeder-RSRC
		BlackFeeder-RSRC
		Down-RSRC
		HtmOverColor-RSRC
		BlackContainer-RSRC
		BlackPrinter-RSRC
		Up-RSRC
		Finisher1-RSRC
		Finisher2-RSRC - resource_t
)
(:predicates
		(Sheetsize ?sheet - sheet_t ?size - size_t)
		(Location ?sheet - sheet_t ?location - location_t)
		(Hasimage ?sheet - sheet_t ?side - side_t ?image - image_t)
		(Sideup ?sheet - sheet_t ?side - side_t)
		(Stackedin ?sheet - sheet_t ?location - location_t)
		(Imagecolor ?image - image_t ?color - color_t)
		(Notprintedwith ?sheet - sheet_t ?side - side_t ?color - color_t)
		(Oppositeside ?side1 - side_t ?side2 - side_t)
		(Available ?resource - resource_t)
		(Prevsheet ?sheet1 - sheet_t ?sheet2 - sheet_t)
		(Uninitialized)


