#Include "protheus.ch"
#Include "fwmvcdef.ch"

User Function CRMA980()
    Local aParam        := PARAMIXB
    Local xRet          := .T.
    Local lIsGrid       := .F.
    Local cIDPonto      := ''
    Local cIDModel      := ''
    Local oObj          := NIL

    If aParam <> NIL
        oObj        := aParam[1]
        cIDPonto    := aParam[2]
        cIDModel    := aParam[3]
        lIsGrid     := (Len(aParam) > 3)
        nOperation := oObj:GetOperation()

        If cIDPonto == 'MODELCOMMITTTS'
            // Mostra o tipo de Operacao
            //MsgAlert("Operacao " + CValToChar(nOperation), "Tipo de operacao MODELCOMMITTTS")
            // Inclusao

            If nOperation == 3
                MsgAlert("Entrou no PE - Operacao de Inclusao", "Tipo de operacao 3 MODELCOMMITTTS")
                Conout("Entrou no PE - Operacao de Inclusao", "Tipo de operacao 3 MODELCOMMITTTS")
            EndIf

            // Alteracao
            If nOperation == 4
                MsgAlert("Entrou no PE - Operacao de Alteracao", "Tipo de operacao 4 MODELCOMMITTTS")
                Conout("Entrou no PE - Operacao de Alteracao", "Tipo de operacao 4 MODELCOMMITTTS")
            EndIf

            // Exclusao
            If nOperation == 5
                MsgAlert("Entrou no PE - Operacao de Exclusao", "Tipo de operacao 5 MODELCOMMITTTS")
                Conout("Entrou no PE - Operacao de Exclusao", "Tipo de operacao 5 MODELCOMMITTTS")
            EndIf
        EndIf
    EndIf
Return xRet