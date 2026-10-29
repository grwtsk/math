# Verification target: Nullstellensatz Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d32b00a5033741fc031a77af780bf8fac7013b7c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantb7876c7950564efbd3368d9c6cc92072626f4de143c6644c6d136dce6d1846d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/NullstellensatzPublic.lean/index.md) · [Full source](../../../../Combinatorics/NullstellensatzPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d32b00a5033741fc031a77af780bf8fac7013b7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantb7876c7950564efbd3368d9c6cc92072626f4de143c6644c6d136dce6d1846d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantb7876c7950564efbd3368d9c6cc92072626f4de143c6644c6d136dce6d1846d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_eval_zero_at_prod_finset](../../../../Combinatorics/NullstellensatzPublic.lean/declarations/eq-zero-of-eval-zero-at-prod-finset.md) | 67 | `result-track:78cb88d5e20ba069e727de85013549af01dc5c212b1136726e111c84bbe1e51a` |
| 2 | `def` | [Alon.P](../../../../Combinatorics/NullstellensatzPublic.lean/declarations/alon-p.md) | 150 | `declaration-track:d7ab11e90fe236433549d8a00445a106b61991048c96cf3b6cfede382b2a00b2` |
| 3 | `theorem` | [Alon.degree_P](../../../../Combinatorics/NullstellensatzPublic.lean/declarations/alon-degree-p.md) | 155 | `result-track:2ed0576010bf84e1c2e92ca4577607f7f9dbb545b2e750f5c07a554a0cf56a08` |
| 4 | `theorem` | [Alon.monic_P](../../../../Combinatorics/NullstellensatzPublic.lean/declarations/alon-monic-p.md) | 165 | `result-track:b024359933b41570e4809f48646e869ea15420b4db50aff7cc971d6d2ca9a4ee` |
| 5 | `lemma` | [Alon.of_mem_P_support](../../../../Combinatorics/NullstellensatzPublic.lean/declarations/alon-of-mem-p-support.md) | 171 | `result-track:5846537d60f5a9fab36fc86180dc4631377160c6c3cb2a3fdd09221a86c350eb` |
| 6 | `theorem` | [combinatorial_nullstellensatz_exists_linearCombination](../../../../Combinatorics/NullstellensatzPublic.lean/declarations/combinatorial-nullstellensatz-exists-linearcombination.md) | 205 | `result-track:defdcf42944c629d549b84eab63973c64033093aeef5467f365974c6b903a81d` |
| 7 | `theorem` | [combinatorial_nullstellensatz_exists_eval_nonzero](../../../../Combinatorics/NullstellensatzPublic.lean/declarations/combinatorial-nullstellensatz-exists-eval-nonzero.md) | 240 | `result-track:a2d8402ac94c20181ac66f66366ea4a5291ba78543530023e9b43ac1868e54f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd2b57a71c79c0093fb2bd0a8e5a2d80a2984affd00b5bca2702514a6950ed83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantb7876c7950564efbd3368d9c6cc92072626f4de143c6644c6d136dce6d1846d7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantb7876c7950564efbd3368d9c6cc92072626f4de143c6644c6d136dce6d1846d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
