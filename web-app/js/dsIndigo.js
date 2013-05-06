var dsIndigo = new Object();

function hideForm(hide, idForm){
	if(hide)
		$('#' + idForm).css('display', 'block');
	else
		$('#' + idForm).css('display', 'none');
}
function updateInAddeda(idElement, idElementHide){
	debugger
	if(idElement == 'pagoIn')
		$('#generaAddenda').css('display', 'block');
	$('#elemntsInAddena').css('display', 'block');
	$('#' + idElement).css('display', 'block');
	$('#' + idElementHide).css('display', 'none');
}

dsIndigo.ajaxPost = function(formId, handleAs, responseFunction){
    if (!handleAs){
        handleAs = "text"
    }
    if (!responseFunction){
        responseFunction = function(data){}
    }
    dojo.xhrPost({
        form: formId,
        handleAs: handleAs,
        load: function(data){
            responseFunction(data)
        },
        error: function(error){
                alert("Error: " + error);
            }
    });
}

dsIndigo.ajaxPostReplace = function(formId, elementId, actionLink){
    dojo.require("dojox.html._base"); 
    var elementId = elementId;
    var form = dojo.byId(formId);
    var orgActionLink = dojo.attr(form, "action");
    if (actionLink){
        dojo.attr(form, "action", actionLink);
    }
    dsIndigo.ajaxPost(formId, null, function(data){
        var node = dojo.byId(elementId)
        dojox.html.set(node, data, {
             executeScripts: true
        });
        if (actionLink){
            dojo.attr(form, "action", orgActionLink);
        }
    })
}