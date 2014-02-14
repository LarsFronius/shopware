
//{namespace name=backend/theme/main}

Ext.define('Shopware.apps.Theme.view.create.Theme', {

    extend: 'Shopware.model.Container',
    padding: 20,
    layout: 'anchor',

    configure: function() {
        var me = this;

        return {
            fieldSets: [
                {
                    title: '{s name=theme_data}Theme data{/s}',
                    padding: 10,
                    layout: 'fit',
                    fields: {
                        parentId: me.createExtendCombo,
                        name: {
                            fieldLabel: '{s name=name}Name{/s}',
                            allowBlank: false,
                            vtype: 'alphanum'
                        }
                    }
                }
            ]
        };
    },

    createExtendCombo: function(container, model, formField, field, fieldAssociation) {
        var me = this;

        me.extendStore = Ext.create('Shopware.apps.Theme.store.Theme', {
            filters: [
                { property: 'version', value: 3 }
            ]
        }).load();

        me.extendCombo = Ext.create('Ext.form.field.ComboBox', {
            store: me.extendStore,
            labelWidth: 130,
            name: 'parentId',
            displayField: 'name',
            anchor: '100%',
            valueField: 'id',
            allowBlank: false,
            fieldLabel: '{s name=extension_of}Extension of{/s}'
        });

        return me.extendCombo;
    },

    createModelFieldSet: function() {
        var me = this,
            fieldSet = me.callParent(arguments);

        fieldSet.items.items[0].padding = 0;
        return fieldSet;
    }
});