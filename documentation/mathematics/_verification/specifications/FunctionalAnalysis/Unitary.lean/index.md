# Verification target: Unitary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60d2c10a0af9111abfb09a8e84e46df90b31dfe2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Unitary.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Unitary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60d2c10a0af9111abfb09a8e84e46df90b31dfe2`.

Source path: `GRWTSK/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Peel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfc_unitary_iff](../../../../FunctionalAnalysis/Unitary.lean/declarations/cfc-unitary-iff.md) | 25 | `result-track:2800057e18a05346ac5ab77b5587ce0e938b524d91f6458a40cad0928d9aede6` |
| 2 | `lemma` | [unitary_iff_isStarNormal_and_spectrum_subset_unitary](../../../../FunctionalAnalysis/Unitary.lean/declarations/unitary-iff-isstarnormal-and-spectrum-subset-unitary.md) | 40 | `result-track:a438a123bf87eec7527090a3e25a97e5ebea196a86a8887dec800cf5e6a88c9b` |
| 3 | `lemma` | [mem_unitary_of_spectrum_subset_unitary](../../../../FunctionalAnalysis/Unitary.lean/declarations/mem-unitary-of-spectrum-subset-unitary.md) | 48 | `result-track:7c6e670eb8925ee8a40a3c5a5e67a32a2a7f201dded0f1ca995db37831e38bd3` |
| 4 | `lemma` | [spectrum_subset_unitary_of_mem_unitary](../../../../FunctionalAnalysis/Unitary.lean/declarations/spectrum-subset-unitary-of-mem-unitary.md) | 52 | `result-track:59c03d1b9ec66b00a884563105228ca643606e2f3abc4b4f4693e24f92ed2bc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f53a86d369f8877faac58178c84430aaaa466f2a9fcbfaabb134d2e7f2a4af3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean","GRWTSK/_verification/specifications/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
