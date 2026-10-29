# Verification target: Harmonic Defs Defs Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "457bd4938c589c6e2d9c9deeaef4e37cd0584b59",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Defs/Variantd291fed17feec7521a76aeb4fa303ea1a01a7b2c337bd0465b43a32e6a863c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/HarmonicDefsDefsDefsNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/HarmonicDefsDefsDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `457bd4938c589c6e2d9c9deeaef4e37cd0584b59`.

Source path: `GRWTSK/NumberTheory/Defs/Variantd291fed17feec7521a76aeb4fa303ea1a01a7b2c337bd0465b43a32e6a863c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Defs/Variantd291fed17feec7521a76aeb4fa303ea1a01a7b2c337bd0465b43a32e6a863c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonic](../../../../NumberTheory/HarmonicDefsDefsDefsNamespaced.lean/declarations/harmonic.md) | 27 | `declaration-track:c8d479fb69214f7735cc6665a44ac0fb30d0b1cb2b9bd396c945c171303ff117` |
| 2 | `lemma` | [harmonic_zero](../../../../NumberTheory/HarmonicDefsDefsDefsNamespaced.lean/declarations/harmonic-zero.md) | 30 | `result-track:7cd463b3dad2a52eda7fca58237a7212f5e75c6d8c06c56183c9815543f92fdd` |
| 3 | `lemma` | [harmonic_succ](../../../../NumberTheory/HarmonicDefsDefsDefsNamespaced.lean/declarations/harmonic-succ.md) | 34 | `result-track:5da0a5999dd32dd04b5225b2a7cb9e985bae545ff4bd7582248860e7df19cdc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cfac5e54e68f30debf62057946a273e7698f31af49e0fe7e66bfea842e535b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Defs/Variantd291fed17feec7521a76aeb4fa303ea1a01a7b2c337bd0465b43a32e6a863c27.lean","GRWTSK/_verification/specifications/NumberTheory/Defs/Variantd291fed17feec7521a76aeb4fa303ea1a01a7b2c337bd0465b43a32e6a863c27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
