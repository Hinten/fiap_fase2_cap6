from src.database.models.compartilhado import TipoCultura, FormatoArea
from src.database.tipos_base.model import Model
from dataclasses import dataclass, field



@dataclass(frozen=True, eq=True)
class Insumo(Model):

    nome: str = field(metadata={
        'label': 'Nome do Insumo',
    })

    tipo:TipoCultura = field(metadata={
        'label': 'Tipo de Cultura',
    })

    consumo: float = field(metadata={
        'label': 'Consumo por hectare (kg)',
    })

    custo: float = field(metadata={
        'label': 'Custo por kg (R$)',
    })

    def custo_total(self, area: float) -> float:
        """
        Calcula o custo total do insumo com base na área e no consumo.
        :param area: Área em m2.
        :return: Custo total em R$.
        """

        area_hectare = area / 10000  # Convertendo m² para hectares

        return self.consumo * area_hectare * self.custo
