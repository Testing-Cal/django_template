# from django.test import TestCase
#
# # Create your tests here.
#
# class ContextTestCase(TestCase):
#     def test_app(self):
#         self.assertTrue(True)
import pytest

# Create your tests here.

@pytest.mark.django_db
def test_app():
    assert True

