# Verification target: Taylor Germ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb781171462fa9051f3da1a424f243f57ac88489",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb781171462fa9051f3da1a424f243f57ac88489`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TaylorExpansionAtSEqOneData](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/declarations/taylorexpansionatseqonedata.md) | 33 | `declaration-track:52dc0f5e2e760d5da6caa89ca666167b50be3c7ab7922d234718d7aed6ed86c0` |
| 2 | `structure` | [TaylorExpansionAtSEqOneCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/declarations/taylorexpansionatseqonecertificate.md) | 54 | `declaration-track:5c72546fdfe9c15a629a5edd43bae6f66d26e9e0534b6a689de2dca358d13be8` |
| 3 | `def` | [TaylorExpansionAtSEqOneCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/declarations/taylorexpansionatseqonecertificate-certifiedforbsd.md) | 71 | `declaration-track:6be7212aaeabb2343937e5f9c5cfb66b0f0c30b6bb33fbf1ee8082091cf56f2b` |
| 4 | `theorem` | [TaylorExpansionAtSEqOneCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/declarations/taylorexpansionatseqonecertificate-certifiedforbsd-of-fields.md) | 84 | `result-track:afcdb3e2e2631e3fe054b79af2ab2db012d07bb0e1495cece90f50c69c9ce055` |
| 5 | `structure` | [LeadingCoefficientCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/declarations/leadingcoefficientcertificate.md) | 109 | `declaration-track:dac35badd6569127939cfd13ee600245ded0c693c2f0cd4f648f03556bfffe2f` |
| 6 | `def` | [LeadingCoefficientCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/declarations/leadingcoefficientcertificate-certifiedforbsd.md) | 141 | `declaration-track:aef8eb3088f6c4ea0566e6c5343990b7526b887bed4296903c6406f224575645` |
| 7 | `theorem` | [LeadingCoefficientCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/TaylorGerm.lean/declarations/leadingcoefficientcertificate-certifiedforbsd-of-fields.md) | 159 | `result-track:fd49c9764e9c365591a3d99776c7d917db12e90f5e21b84f354eb4c9984c0296` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=853cc402a54620110ffed0265c44265386ed4a27a484fd3af46852dc285f1013 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaylorGerm/Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
