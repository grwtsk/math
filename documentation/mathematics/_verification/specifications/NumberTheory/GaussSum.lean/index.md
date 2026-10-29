# Verification target: Gauss Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6a9dab37c8e891357cf7850cc013548bed36911",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/GaussSum.lean/index.md) · [Full source](../../../../NumberTheory/GaussSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6a9dab37c8e891357cf7850cc013548bed36911`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.GaussSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [gaussSum_aux_of_mulShift](../../../../NumberTheory/GaussSum.lean/declarations/gausssum-aux-of-mulshift.md) | 16 | `result-track:cfdf31ca8267ef072bc9e6ee6c80a0877a34378896249c83d5b1ce7c941e4955` |
| 2 | `lemma` | [factorsThrough_of_gaussSum_ne_zero](../../../../NumberTheory/GaussSum.lean/declarations/factorsthrough-of-gausssum-ne-zero.md) | 35 | `result-track:852c73b266c0ca1d0888b98faebb04ba0db1a3b456804d97d45058d510ff7442` |
| 3 | `lemma` | [gaussSum_eq_zero_of_isPrimitive_of_not_isPrimitive](../../../../NumberTheory/GaussSum.lean/declarations/gausssum-eq-zero-of-isprimitive-of-not-isprimitive.md) | 45 | `result-track:fe8b16cb8f181f2667cfaa8f0232ee682ba11a71b5cf9755a293ca30c6c75327` |
| 4 | `lemma` | [gaussSum_mulShift_of_isPrimitive](../../../../NumberTheory/GaussSum.lean/declarations/gausssum-mulshift-of-isprimitive.md) | 55 | `result-track:1529c827585e9a9a69ea81cea61e83cbc04558cb39b3d0afc9785c92638b0662` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4156393cbe8c101bdc4bd76cce4622fbc7f5efd1e0bdc9100dbe9d6a8a4a04a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/GaussSum/Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
