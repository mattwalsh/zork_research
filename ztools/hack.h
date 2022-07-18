void configure_inform_tables (unsigned long obj_data_end, /* everything follows from this */
                              unsigned short *inform_version,
                              unsigned long *class_numbers_base,
                              unsigned long *class_numbers_end,
                              unsigned long *property_names_base,
                              unsigned long *property_names_end,
                              unsigned long *attr_names_base,
                              unsigned long *attr_names_end);
void init_symbols(char *fname);

int print_property_name(unsigned long property_names_base, int prop_no);
int print_attribute_name(unsigned long attr_names_base,
					 int attr_no);
int print_inform_action_name(unsigned long action_names_base, int action_no);
void configure_object_tables
    (unsigned int *, unsigned long *, unsigned long *, unsigned long *,
     unsigned long *);
