
Option Explicit
Private Type itemInfo
    itemName As String
    itemCost As Double
    itemQuantity As Integer
    itemPicturePath As String
End Type
Private udtItems(14) As itemInfo
Private intCategory As Integer
Private Sub cmdBack_Click()
imgBLT.Visible = True
lblBLT.Visible = True
cmdBLT.Visible = True
imgBRT.Visible = True
lblBRT.Visible = True
cmdBRT.Visible = True
End Sub
Private Sub cmdBLT_Click()
intCategory = 4
Call imgDisplay
End Sub
Private Sub cmdBRT_Click()
intCategory = 5
Call imgDisplay
End Sub
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdCheckout_Click()
Call itemCheckout
End Sub
Private Sub cmdSearch_Click()
Dim intX As Integer
Dim blnFound As Boolean
Dim intIndex As Integer
Dim strName As String
Dim intQuantity As Integer
Dim intCost As Integer
Dim intTemp As Integer
If optName.Value = True Then
    strName = InputBox("Enter the name of the product", "Kipplex") 'Gets search input from user
    For intX = 0 To UBound(udtItems)
    If strName Like udtItems(intX).itemName = True Then 'Searches the item array for user input
        intTemp = 1
        intX = intIndex 'Puts place found in the array in a variable
    End If
    Next intX
If intTemp = 1 Then
    MsgBox "Item Found", , "Search"
    lblInfo.Caption = "Name: " & udtItems(intIndex).itemName & vbCrLf & "Cost: $" & udtItems(intIndex).itemCost & vbCrLf & "Quantity: " & udtItems(intIndex).itemQuantity
ElseIf intTemp <> 1 Then
        MsgBox "Item not found", , "Search"
End If
End If
End Sub
Sub itemInfo()
'CPUs
'udtItems(0).itemName = "Intel Core I7-6700K"
'udtItems(0).itemCost = 420
'udtItems(0).itemQuantity = 10
'udtItems(0).itemPicturePath = "I7-6700K.jpg"

'udtItems(1).itemName = "Intel Core I7-6700"
'udtItems(1).itemCost = 400
'udtItems(1).itemQuantity = 15
'udtItems(1).itemPicturePath = "I7-6700.jpg"

'udtItems(2).itemName = "Intel Core I5-6600K"
'udtItems(2).itemPicturePath = "I5-6700.jpg"
'udtItems(2).itemCost = 260
'udtItems(2).itemQuantity = 25

'Motherboards

udtItems(3).itemName = "Gigabyte LGA1151"
udtItems(3).itemCost = 56
udtItems(3).itemQuantity = 30
udtItems(3).itemPicturePath = "Gigabyte.jpg"

udtItems(4).itemName = "ASUS Z170-A"
udtItems(4).itemCost = 170
udtItems(4).itemQuantity = 20
udtItems(4).itemPicturePath = "Asus.Jpg"

udtItems(5).itemCost = 100
udtItems(5).itemName = "MSI 970"
udtItems(5).itemPicturePath = "MSI.jpg"
udtItems(5).itemQuantity = 35

'Power Supplies
udtItems(1).itemCost = 40
udtItems(1).itemName = "EVGA 500"
udtItems(1).itemPicturePath = "EVGA.jpg"
udtItems(1).itemQuantity = 40

udtItems(2).itemCost = 79
udtItems(2).itemName = "Corsair CX Series"
udtItems(2).itemPicturePath = "Corsair.jpg"
udtItems(2).itemQuantity = 35

udtItems(3).itemCost = 180
udtItems(3).itemName = "EVGA Supernova"
udtItems(3).itemPicturePath = "EVGAS.jpg"
udtItems(3).itemQuantity = 20

'Hardrives
udtItems(9).itemCost = 54
udtItems(9).itemName = "Seagate 1TB HDD"
udtItems(9).itemPicturePath = "Seagate.Jpg"
udtItems(9).itemQuantity = 37

udtItems(10).itemCost = 96
udtItems(10).itemName = "WD Green 2TB HDD"
udtItems(10).itemPicturePath = "WD.Jpg"
udtItems(10).itemQuantity = 30

udtItems(11).itemCost = 600
udtItems(11).itemName = "HGST 8TB HDD"
udtItems(11).itemPicturePath = "HGST.Jpg"
udtItems(11).itemQuantity = 5

'RAM
udtItems(12).itemCost = 26
udtItems(12).itemName = "Crucial Ballistix Sport 4GB"
udtItems(12).itemPicturePath = "Crucial.Jpg"
udtItems(12).itemQuantity = 38

udtItems(13).itemName = "Vengeance LPX 64GB"
udtItems(13).itemCost = 594
udtItems(13).itemPicturePath = "CorsairV.Jpg"
udtItems(13).itemQuantity = 10

udtItems(14).itemCost = 41
udtItems(14).itemName = "Kingston HyperX FURY 8GB"
udtItems(14).itemPicturePath = "Kingston.jpg"
udtItems(14).itemQuantity = 25
End Sub
Private Sub cmdTMT_Click()
intCategory = 2
Call imgDisplay
End Sub
Private Sub cmdTRT_Click()
intCategory = 3
Call imgDisplay
End Sub

Private Sub Form_Load()
intCategory = 1
cmdBack.Caption = "Back"
frmStore.Caption = "Kipplex Hardware Store"
frmStore.WindowState = vbMaximized
lbltitle.Caption = "Welcome to the Kipplex Hardware Store. Select your item category below."
lblTLT.Caption = ""
lblTMT.Caption = ""
lblRMT.Caption = ""
lblBLT.Caption = ""
lblBRT.Caption = ""
cmdCancel.Caption = "Exit"
optName.Caption = "Name"
optQTN.Caption = "Quantity"
optCost.Caption = "Cost"
cmdCheckout.Caption = "Checkout"
lblSearchTitle.Caption = "Enter the name, cost, or quantity of the item to search"
cmdSearch.Caption = "Search"
txtSearch.Text = ""
lblTLT.Alignment = 2
lblTMT.Alignment = 2
lblRMT.Alignment = 2
lblBLT.Alignment = 2
lblBRT.Alignment = 2
lblSearchTitle.Alignment = 2
imgTLT.Stretch = True
imgTMT.Stretch = True
imgTRT.Stretch = True
imgBLT.Stretch = True
imgBRT.Stretch = True
fraOptions.Caption = "Options"
imgTLT.Picture = LoadPicture("Processor.jpg")
Call itemInfo
End Sub
Private Sub cmdTLT_Click()
'imgBLT.Visible = False
'lblBLT.Visible = False
'cmdBLT.Visible = False
'imgBRT.Visible = False
'lblBRT.Visible = False
'cmdBRT.Visible = False
'cmdTLT.Caption = "To View Info, Click on Photo"
intCategory = 1
Call imgDisplay
End Sub
Sub imgDisplay()
If intCategory = 1 Then
    imgTLT.Picture = LoadPicture(udtItems(1).itemPicturePath)
    imgTMT.Picture = LoadPicture(udtItems(2).itemPicturePath)
    imgTRT.Picture = LoadPicture(udtItems(3).itemPicturePath)
ElseIf intCategory = 2 Then
    imgTLT.Picture = LoadPicture(udtItems(3).itemPicturePath)
    imgTMT.Picture = LoadPicture(udtItems(4).itemPicturePath)
    imgTRT.Picture = LoadPicture(udtItems(5).itemPicturePath)
ElseIf intCategory = 3 Then
    imgTLT.Picture = LoadPicture(udtItems(6).itemPicturePath)
    imgTMT.Picture = LoadPicture(udtItems(7).itemPicturePath)
    imgTRT.Picture = LoadPicture(udtItems(8).itemPicturePath)
ElseIf intCategory = 4 Then
    imgTLT.Picture = LoadPicture(udtItems(9).itemPicturePath)
    imgTMT.Picture = LoadPicture(udtItems(10).itemPicturePath)
    imgTRT.Picture = LoadPicture(udtItems(11).itemPicturePath)
ElseIf intCategory = 5 Then
    imgTLT.Picture = LoadPicture(udtItems(12).itemPicturePath)
    imgTMT.Picture = LoadPicture(udtItems(13).itemPicturePath)
    imgTRT.Picture = LoadPicture(udtItems(14).itemPicturePath)
End If
End Sub
Private Sub imgTLT_Click()
Dim intIndex As Integer
If intCategory = 1 Then
    lblInfo.Caption = "Name: " & udtItems(1).itemName & vbCrLf & "Cost: $" & udtItems(0).itemCost & vbCrLf & "Quantity: " & udtItems(0).itemQuantity
ElseIf intCategory = 2 Then
    lblInfo.Caption = "Name: " & udtItems(3).itemName & vbCrLf & "Cost: $" & udtItems(3).itemCost & vbCrLf & "Quantity: " & udtItems(3).itemQuantity
ElseIf intCategory = 3 Then
    lblInfo.Caption = "Name: " & udtItems(6).itemName & vbCrLf & "Cost: $" & udtItems(6).itemCost & vbCrLf & "Quantity: " & udtItems(6).itemQuantity
ElseIf intCategory = 4 Then
    lblInfo.Caption = "Name: " & udtItems(9).itemName & vbCrLf & "Cost: $" & udtItems(9).itemCost & vbCrLf & "Quantity: " & udtItems(9).itemQuantity
ElseIf intCategory = 5 Then
    lblInfo.Caption = "Name: " & udtItems(12).itemName & vbCrLf & "Cost: $" & udtItems(12).itemCost & vbCrLf & "Quantity: " & udtItems(12).itemQuantity
End If
End Sub
Private Sub imgTMT_Click()
If intCategory = 1 Then
    lblInfo.Caption = "Name: " & udtItems(2).itemName & vbCrLf & "Cost: $" & udtItems(1).itemCost & vbCrLf & "Quantity: " & udtItems(1).itemQuantity
ElseIf intCategory = 2 Then
    lblInfo.Caption = "Name: " & udtItems(4).itemName & vbCrLf & "Cost: $" & udtItems(4).itemCost & vbCrLf & "Quantity: " & udtItems(4).itemQuantity
ElseIf intCategory = 3 Then
    lblInfo.Caption = "Name: " & udtItems(7).itemName & vbCrLf & "Cost: $" & udtItems(7).itemCost & vbCrLf & "Quantity: " & udtItems(7).itemQuantity
ElseIf intCategory = 4 Then
    lblInfo.Caption = "Name: " & udtItems(10).itemName & vbCrLf & "Cost: $" & udtItems(10).itemCost & vbCrLf & "Quantity: " & udtItems(10).itemQuantity
ElseIf intCategory = 5 Then
    lblInfo.Caption = "Name: " & udtItems(13).itemName & vbCrLf & "Cost: $" & udtItems(13).itemCost & vbCrLf & "Quantity: " & udtItems(13).itemQuantity
End If
End Sub
Private Sub imgTRT_Click()
Dim intIndex As Integer
If intCategory = 1 Then
    lblInfo.Caption = "Name: " & udtItems(3).itemName & vbCrLf & "Cost: $" & udtItems(2).itemCost & vbCrLf & "Quantity: " & udtItems(2).itemQuantity
ElseIf intCategory = 2 Then
    lblInfo.Caption = "Name: " & udtItems(5).itemName & vbCrLf & "Cost: $" & udtItems(5).itemCost & vbCrLf & "Quantity: " & udtItems(5).itemQuantity
ElseIf intCategory = 3 Then
    lblInfo.Caption = "Name: " & udtItems(8).itemName & vbCrLf & "Cost: $" & udtItems(8).itemCost & vbCrLf & "Quantity: " & udtItems(8).itemQuantity
ElseIf intCategory = 4 Then
    lblInfo.Caption = "Name: " & udtItems(11).itemName & vbCrLf & "Cost: $" & udtItems(11).itemCost & vbCrLf & "Quantity: " & udtItems(11).itemQuantity
ElseIf intCategory = 5 Then
    lblInfo.Caption = "Name: " & udtItems(14).itemName & vbCrLf & "Cost: $" & udtItems(14).itemCost & vbCrLf & "Quantity: " & udtItems(14).itemQuantity
End If
End Sub
'Sub itemCheckout()
'Dim dblCost As Double
'dblCost = udtItems(intIndex).itemCost
'Static intCounter As Integer
'Dim intX As Integer
'Dim dblCost As Double
'udtItems(intX).itemCost = dblCost
'Dim dblTotalCost As Double
'Const dblTax As Double = 0.08375
''intCounter = intCounter + 1
'lblCounter.Caption = "Customer Number: " & intCounter
'lstList.Clear
'dblTotalCost = dblCost + dblCost * dblTax
'MsgBox "Sales Tax: " & dblTax & vbCrLf & "Total Cost: " & dblTotalCost, , "Receipt"
'End Sub

Private Sub cmdCategory_Click(Index As Integer)

Index = (Index * intCategory) + 1
MsgBox Index
'MsgBox udtItems(Index).itemName
End Sub
Private Sub mnuCPU_Click(Index As Integer)
intCategory = 4 'Check category
Call imgDisplay
End Sub
Private Sub mnumobo_Click(Index As Integer)
intCategory = 2
Call imgDisplay
End Sub
Private Sub mnupsu_Click(Index As Integer)
intCategory = 1
Call imgDisplay
End Sub
Private Sub mnuHDD_Click(Index As Integer)
intCategory = 3
Call imgDisplay
End Sub
Private Sub mnuRAM_Click(Index As Integer)
intCategory = 4
Call imgDisplay
End Sub

