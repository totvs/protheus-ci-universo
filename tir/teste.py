# Import from our package the class you're going to use
from tir import Webapp

test_helper = Webapp()
test_helper.Setup('SIGAMDI','19/04/2023','99','     01','04')
test_helper.Program('MATA010')

test_helper.SetButton('Cancelar')
test_helper.AssertTrue()

test_helper.TearDown()