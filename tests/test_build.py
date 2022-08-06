import unittest
from cython_tools.builder import build

class BuildTestCase(unittest.TestCase):
    def test_build(self):
        project_root = './init_project'
        build(project_root,  annotate=True)


if __name__ == '__main__':
    unittest.main()
