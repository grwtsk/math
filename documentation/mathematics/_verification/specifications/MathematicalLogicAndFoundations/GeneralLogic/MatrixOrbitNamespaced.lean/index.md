# Verification target: Matrix Orbit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d04010f2d07697e232e74ab51a02f220c6de2ef",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixOrbit/Variantb248ba53c479c719d77946ff67f06ebea2b7fdfe435637bee46447277d243f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixOrbitNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixOrbitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d04010f2d07697e232e74ab51a02f220c6de2ef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixOrbit/Variantb248ba53c479c719d77946ff67f06ebea2b7fdfe435637bee46447277d243f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixOrbit/Variantb248ba53c479c719d77946ff67f06ebea2b7fdfe435637bee46447277d243f68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.MatrixSymmetry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InSameOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixOrbitNamespaced.lean/declarations/insameorbit.md) | 26 | `declaration-track:da9b377158187073d20217f91579f459aba23ecc73117be8c73893193f301b62` |
| 2 | `structure` | [OrbitCanonicalizer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixOrbitNamespaced.lean/declarations/orbitcanonicalizer.md) | 31 | `declaration-track:8b821e533a55d690b899ad844aa1405ce54a02dce52b4a5a5ee1659bcaade74e` |
| 3 | `def` | [copyCanonicalizer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixOrbitNamespaced.lean/declarations/copycanonicalizer.md) | 39 | `declaration-track:bbdf5d4694cc8a084304fdc6592de09ff4cb243082163825d904a38061ebdc8e` |
| 4 | `theorem` | [orbitCanonicalizer_reconstruct](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixOrbitNamespaced.lean/declarations/orbitcanonicalizer-reconstruct.md) | 47 | `result-track:61faf7fc829db1e4c324e7dfdba7ec19cbb70ea667981f0b61f42e123477dcd3` |
| 5 | `theorem` | [copyCanonicalizer_reconstruct](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MatrixOrbitNamespaced.lean/declarations/copycanonicalizer-reconstruct.md) | 54 | `result-track:0f8884498c675ef9c6d177709325b3dc3f5908590995e4d6b9834d9ec17b08c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce045ef76359992ab90afa3858960b841da36284b423c330bf42e36dc169d7df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixOrbit/Variantb248ba53c479c719d77946ff67f06ebea2b7fdfe435637bee46447277d243f68.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixOrbit/Variantb248ba53c479c719d77946ff67f06ebea2b7fdfe435637bee46447277d243f68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
