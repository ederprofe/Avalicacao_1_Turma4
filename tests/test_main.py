from app.main import calcular_media, verificar_aprovacao
import pytest

def test_calcular_media():
    assert calcular_media([10, 8, 6]) == 8

def test_media_vazia():
    with pytest.raises(ValueError):
        calcular_media([])

def test_verificar_aprovacao():
    assert verificar_aprovacao([7, 7, 7]) == "Aprovado"
    assert verificar_aprovacao([5, 6, 5]) == "Reprovado"
