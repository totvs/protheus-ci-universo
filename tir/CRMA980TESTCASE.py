from tir import Webapp
import unittest

class CRMA980(unittest.TestCase):

	@classmethod
	def setUpClass(inst):
		inst.oHelper = Webapp()
		inst.oHelper.Setup('SIGAFAT','19/04/2023','99','01      ','05')
		inst.oHelper.Program('CRMA980')

	def test_CRMA980_CT133(self):

		cliente = 'FTC143'
		loja = '01'

		self.oHelper.SetButton('Incluir')
		# self.oHelper.SetBranch('01      ')
		self.oHelper.ClickFolder('Principal')
		self.oHelper.ClickFolder('Cadastrais')
		self.oHelper.SetValue('A1_COD',cliente)
		self.oHelper.SetValue('A1_LOJA',loja)
		self.oHelper.SetValue('A1_PESSOA','F - Fisica')
		self.oHelper.SetValue('A1_NOME','FAT CLI CRMA980 INCLUSAO')
		self.oHelper.SetValue('A1_NREDUZ','CLI CRMA980')
		self.oHelper.SetValue('A1_END','RUA DAS ORQUIDEAS, 100')
		self.oHelper.SetValue('A1_TIPO','F - Cons.Final')
		self.oHelper.SetValue('A1_EST','SP')
		# self.oHelper.SetValue('A1_COD_MUN','50308')
		self.oHelper.SetValue('A1_MUN','SAO PAULO')
		self.oHelper.SetButton('Confirmar')
		# self.oHelper.SetButton('Não')
		self.oHelper.SetButton('Fechar') # Mensagem do PE
		self.oHelper.SetButton('Fechar')

		self.oHelper.SearchBrowse(f'{cliente+loja}', 'Codigo + Loja')

		self.oHelper.SetButton('Visualizar')
		self.oHelper.ClickFolder('Principal')
		self.oHelper.ClickFolder('Cadastrais')
		self.oHelper.CheckResult('A1_COD',cliente)
		self.oHelper.CheckResult('A1_LOJA',loja)
		self.oHelper.CheckResult('A1_PESSOA','F - Fisica')
		self.oHelper.CheckResult('A1_NOME','FAT CLI CRMA980 INCLUSAO')
		self.oHelper.CheckResult('A1_NREDUZ','CLI CRMA980')
		self.oHelper.CheckResult('A1_END','RUA DAS ORQUIDEAS, 100')
		self.oHelper.CheckResult('A1_TIPO','F - Cons.Final')
		self.oHelper.CheckResult('A1_EST','SP')
		# self.oHelper.CheckResult('A1_COD_MUN','50308')
		self.oHelper.CheckResult('A1_MUN','SAO PAULO')
		self.oHelper.SetButton('Fechar')

		self.oHelper.AssertTrue()

	@classmethod
	def tearDownClass(inst):
		inst.oHelper.TearDown()

if __name__ == '__main__':
	unittest.main()