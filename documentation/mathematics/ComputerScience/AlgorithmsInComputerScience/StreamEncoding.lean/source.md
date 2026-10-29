# Stream Encoding — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `045e60811e8a43da264251a3f41ef8dd542d3f22` · SHA-256 `ea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.Modularity

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def matrixAtoms : BinaryLogicTree → List SomeBinaryLogicMatrix
  | BinaryLogicTree.leaf (BinaryLogicAtom.matrix M) => [M]
  | BinaryLogicTree.leaf _ => []
  | BinaryLogicTree.node l r => matrixAtoms l ++ matrixAtoms r

def primeFactorsCore : OrderedPrimeCore → List PrimeLabel
  | OrderedPrimeCore.irreducible p => [p]
  | OrderedPrimeCore.composite l r => primeFactorsCore l ++ primeFactorsCore r

structure BinaryLogicTreeStreamPlan where
  tree : BinaryLogicTree
  normalForm : OrderedPrimeNormalForm
  matrixFrames : List SomeBinaryLogicMatrix
  irreduciblePrimeFactors : List PrimeLabel
  topologyPrime : PrimeLabel
  arithmeticShadow : ArithmeticShadow
  claimBoundary : List String

def streamPlan
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    BinaryLogicTreeStreamPlan where
  tree := T
  normalForm := normalize R T
  matrixFrames := matrixAtoms T
  irreduciblePrimeFactors := primeFactorsCore (normalizeCore R T)
  topologyPrime := topologyPrimeIdentity R T
  arithmeticShadow := arithmeticShadow R T
  claimBoundary := [
    "BinaryLogicTreeStreamPlan is planning metadata.",
    "Streams and model proposals are not theorem authority.",
    "Invertibility requires BinaryLogicMatrixFlow certificates."
  ]

theorem streamPlan_preserves_matrix_atoms
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).matrixFrames = matrixAtoms T := rfl

theorem streamPlan_primeFactors_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).irreduciblePrimeFactors =
      primeFactorsCore (normalizeCore R T) := rfl

theorem streamPlan_topologyPrime_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).topologyPrime = topologyPrimeIdentity R T := rfl

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd6c37849020d898f52917fcaec583db58dd83eacf755807b5b8b375a078eee5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
