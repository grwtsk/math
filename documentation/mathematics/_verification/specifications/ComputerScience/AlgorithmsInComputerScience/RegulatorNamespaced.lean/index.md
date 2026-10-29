# Verification target: Regulator Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01fe32223178394340917538f9aac65d966b265b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01fe32223178394340917538f9aac65d966b265b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Heights` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RegulatorData](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/declarations/regulatordata.md) | 41 | `declaration-track:9dc047a77b531dd863668b6984176dc9ec70672c02c706b61ab73a5bf9130dc8` |
| 2 | `structure` | [RegulatorCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/declarations/regulatorcertificate.md) | 55 | `declaration-track:e46ee568908f2b019456112b5c593030fe6e5427a30f05782e511cfa37b51c49` |
| 3 | `def` | [RegulatorCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/declarations/regulatorcertificate-certifiedforbsd.md) | 78 | `declaration-track:05c50a0d4d9f9499ecf9c7db77e70fabd8585a11cb4e6b96084e69eebfd7aca6` |
| 4 | `theorem` | [RegulatorCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/declarations/regulatorcertificate-certifiedforbsd-of-fields.md) | 93 | `result-track:93960ef3b97287aab65058c712377778ac918161660e535f4ba0f9f5241737d9` |
| 5 | `structure` | [RegulatorCanonicalHeightCompatibilityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/declarations/regulatorcanonicalheightcompatibilitycertificate.md) | 123 | `declaration-track:56337ffc1a00188b32701ddf0d1ef0f117939dc65bb53f7fa30d1056269613e8` |
| 6 | `def` | [RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/declarations/regulatorcanonicalheightcompatibilitycertificate-certifiedforbsd.md) | 159 | `declaration-track:fb2fcf2829da8c7ab572e5fefab317f3180ea3265572258688d3173c4a72f197` |
| 7 | `theorem` | [RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/RegulatorNamespaced.lean/declarations/regulatorcanonicalheightcompatibilitycertificate-certifiedforbsd-of-fiel.md) | 179 | `result-track:056776a4475803e69668d2e75d0ff6bd163e6a2b9706e8fbfa25f6305a879ac2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e043bf15a9c28ee309359fc71a9a30604834be014f524dfd1bba899a2750996 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantec6d028d9dd438c771e79e5b77869d96ece4fe7d35f7b2c977a89beb7c2d8dc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
