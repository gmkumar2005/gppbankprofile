package com.fnstr.bankprofile.gppbankprofile.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Immutable;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@IdClass(SDFieldAlias.IdClass.class)
@Immutable
@Table(name = "SD_FIELDSALIAS")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SDFieldAlias {
    @Id
    @Column(name = "TABLE_NAME")
    private String tableName;
    @Id
    @Column(name = "FIELD_NAME")
    private String fieldName;
    @Column(name = "ALIAS")
    private String alias;
    @Column(name = "COLUMN_ALIAS")
    private String columnAlias;
    @Id
    @Column(name = "FIELD_ID")
    private Long fieldId;
    @Column(name = "FIELDTYPE")
    private String fieldtype;
    @Column(name = "CONTROL_TYPE")
    private Long controlType;
    @Column(name = "FORMAT_STYLE")
    private Long formatStyle;
    @Column(name = "CONTENT_SOURCE")
    private String contentSource;
    @Column(name = "FAILURE_ACTION")
    private Long failureAction;
    @Column(name = "ACCESS_KEY")
    private String accessKey;
    @Column(name = "MAX_LENGTH")
    private String maxLength;
    @Column(name = "DEFAULT_VALUE")
    private String defaultValue;
    @Column(name = "COLUMN_WIDTH")
    private Long columnWidth;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "DEFAULT_VALUE_TYPE")
    private Long defaultValueType;

    @Data
    static class IdClass implements Serializable {
        private String tableName;
        private String fieldName;
        private Long fieldId;
    }

}
