# Verification target: Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f63cfd022b9c48db8d1ca8306e3ee352b6ab6f83",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Equivalence/Variant298b45294be0a4efa59c55a1d1c8a99d3f92f4ebf619b65fb9d29094f24f2e0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Equivalence.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Equivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f63cfd022b9c48db8d1ca8306e3ee352b6ab6f83`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Equivalence/Variant298b45294be0a4efa59c55a1d1c8a99d3f92f4ebf619b65fb9d29094f24f2e0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Equivalence/Variant298b45294be0a4efa59c55a1d1c8a99d3f92f4ebf619b65fb9d29094f24f2e0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquiv](../../../../FunctionalAnalysis/Equivalence.lean/declarations/isequiv.md) | 21 | `declaration-track:c7cf51395f39d2bb26922963d806de39fc7ae24531ff1feda6d95dac4425c312` |
| 2 | `lemma` | [isEquiv_refl](../../../../FunctionalAnalysis/Equivalence.lean/declarations/isequiv-refl.md) | 25 | `result-track:d70c3f07d8c7db8dfa7274785c1854e8f674d0964877e5f86760984501d9a2b9` |
| 3 | `lemma` | [isEquiv_symm](../../../../FunctionalAnalysis/Equivalence.lean/declarations/isequiv-symm.md) | 29 | `result-track:3a22bea5606e800476e49b0d921f42df5c420bc6be7f802933de57eddcb4e96d` |
| 4 | `lemma` | [isEquiv_trans](../../../../FunctionalAnalysis/Equivalence.lean/declarations/isequiv-trans.md) | 35 | `result-track:b0047bdf7426ae74678672ccc30995834e1efecfca98b9fbf906b450462412df` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/Equivalence.lean/declarations/instance.md) | 42 | `declaration-track:efd1aaf17cce503e297291918446d990bcf6faed74d1305db9211a9391f41337` |
| 6 | `lemma` | [eq_trivial_of_isEquiv_trivial](../../../../FunctionalAnalysis/Equivalence.lean/declarations/eq-trivial-of-isequiv-trivial.md) | 52 | `result-track:a9a375a04d9dee0a8f11ee310a416e05d1b65a1ee916e7b2cd3e658b94cf76a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2a8725aa6bba2cf1909992576d2b43af4a8b53ecec6c19c24c67d9ca28b045a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Equivalence/Variant298b45294be0a4efa59c55a1d1c8a99d3f92f4ebf619b65fb9d29094f24f2e0e.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Equivalence/Variant298b45294be0a4efa59c55a1d1c8a99d3f92f4ebf619b65fb9d29094f24f2e0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
