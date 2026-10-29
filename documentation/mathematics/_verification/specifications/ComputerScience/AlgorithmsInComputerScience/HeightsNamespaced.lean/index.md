# Verification target: Heights Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b7816a8bcc335f53ea60aa3190cdacbaba32eb9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variantd527f0d9a9c76164eed95e9965ea1fdb652e52970dc88661b0bff1936c7374e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/HeightsNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/HeightsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b7816a8bcc335f53ea60aa3190cdacbaba32eb9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variantd527f0d9a9c76164eed95e9965ea1fdb652e52970dc88661b0bff1936c7374e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variantd527f0d9a9c76164eed95e9965ea1fdb652e52970dc88661b0bff1936c7374e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NeronTateHeightPairingData](../../../../../ComputerScience/AlgorithmsInComputerScience/HeightsNamespaced.lean/declarations/nerontateheightpairingdata.md) | 43 | `declaration-track:d4061a12c91eb3ad38ae9fc1f7d7f883b5a2ab9700602855b824922cf692e88f` |
| 2 | `structure` | [NeronTateHeightPairingCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/HeightsNamespaced.lean/declarations/nerontateheightpairingcertificate.md) | 67 | `declaration-track:1d43f2afa8a988f39edad4d63bc45deb2011a076eb98e22cd065dc936621005c` |
| 3 | `def` | [NeronTateHeightPairingCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/HeightsNamespaced.lean/declarations/nerontateheightpairingcertificate-certifiedforbsd.md) | 88 | `declaration-track:1aa22efaf233f1c8fd53fd6ef1905b376faeee61e11be8e89096148f9047ca98` |
| 4 | `theorem` | [NeronTateHeightPairingCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/HeightsNamespaced.lean/declarations/nerontateheightpairingcertificate-certifiedforbsd-of-fields.md) | 101 | `result-track:b305d6dc1a907142d2abdde35e332ab6332fb6db2fef380dbccf87f566f32f8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f53b9ea94f537e1af146e7adb958f45cde053b9b1066e1a4b3baff92e4fba109 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variantd527f0d9a9c76164eed95e9965ea1fdb652e52970dc88661b0bff1936c7374e9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variantd527f0d9a9c76164eed95e9965ea1fdb652e52970dc88661b0bff1936c7374e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
