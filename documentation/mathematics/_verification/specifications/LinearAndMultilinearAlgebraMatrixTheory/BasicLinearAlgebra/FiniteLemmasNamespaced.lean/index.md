# Verification target: Finite Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Base` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.CanonicalBilinear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Reduced` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Irreducible` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coxeterWeightIn_le_four](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/coxeterweightin-le-four.md) | 54 | `result-track:c3a63ccbd043eb62734eba62c8472cc9b8786f13b7b05c02908cfdd97038cfef` |
| 2 | `lemma` | [coxeterWeightIn_mem_set_of_isCrystallographic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/coxeterweightin-mem-set-of-iscrystallographic.md) | 87 | `result-track:77b8d54526f7821777a8f13744db9e57f3c775d09d79d1eede3693d13f6112a1` |
| 3 | `lemma` | [pairingIn_pairingIn_mem_set_of_isCrystallographic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/pairingin-pairingin-mem-set-of-iscrystallographic.md) | 102 | `result-track:58d498bf51fdc66a2c20187a2bab977aa43f35ac1e82d71881472148dd1df0d5` |
| 4 | `lemma` | [pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/pairingin-pairingin-mem-set-of-iscrystal-of-isred.md) | 110 | `result-track:6955f367e100255bd6864bc18fe8ad3af01e78b44878a0b2def4fafd0ae48199` |
| 5 | `lemma` | [pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/pairingin-pairingin-mem-set-of-iscrystal-of-isred-source-edition-2.md) | 121 | `result-track:c7da7bd39a920eebefa89e2886df96dfec6cd41b28ae13b41290b7f845c94899` |
| 6 | `lemma` | [RootPositiveForm.rootLength_le_of_pairingIn_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/rootpositiveform-rootlength-le-of-pairingin-eq.md) | 131 | `result-track:b843e696913ca956764541076ec15b117ec99f645ef96e1fdf5d5e90b1d12bd7` |
| 7 | `lemma` | [RootPositiveForm.rootLength_lt_of_pairingIn_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/rootpositiveform-rootlength-lt-of-pairingin-notmem.md) | 145 | `result-track:52d4eb373c719a898634b56a30ad90ae29467f5831b352af95cee307a24b1552` |
| 8 | `lemma` | [pairingIn_pairingIn_mem_set_of_length_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/pairingin-pairingin-mem-set-of-length-eq.md) | 168 | `result-track:9e7d1ecf24db862a02e35c75c586471cc4841849b8d1835a30b2adafd1d594eb` |
| 9 | `lemma` | [pairingIn_pairingIn_mem_set_of_length_eq_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/pairingin-pairingin-mem-set-of-length-eq-of-ne.md) | 179 | `result-track:aa2c5f9564dc702ac576396367c02e9b46c24d5415cdda5b8750730569dbc620` |
| 10 | `lemma` | [coxeterWeightIn_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/coxeterweightin-eq-zero-iff.md) | 188 | `result-track:dd7889db3233ed1569fba44e65ec9a2b8b78a45654a9e23b1d4385e31e2cbd36` |
| 11 | `lemma` | [root_sub_root_mem_of_pairingIn_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/root-sub-root-mem-of-pairingin-pos.md) | 198 | `result-track:593d5e1e402449912787bf57daec0736c5d10b94bd82a33a0ed99ed27df6f64b` |
| 12 | `lemma` | [root_add_root_mem_of_pairingIn_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/root-add-root-mem-of-pairingin-neg.md) | 239 | `result-track:f21b2cb9ace2ca331372822550264caeb9adfceeefd8547d9c3c82dfa490fb70` |
| 13 | `lemma` | [root_mem_submodule_iff_of_add_mem_invtSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/root-mem-submodule-iff-of-add-mem-invtsubmodule.md) | 247 | `result-track:d624442b680bfb6342d7425586701e4a7c62b335202e712589ccd247620050ff` |
| 14 | `lemma` | [apply_eq_or_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/apply-eq-or-aux.md) | 274 | `result-track:2e905362faaf93e576b2bee379d7b3df6c7599dad732a64bb3d6a3108031758a` |
| 15 | `lemma` | [apply_eq_or](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/apply-eq-or.md) | 291 | `result-track:ada6b77b20a4b5199f83c3e4b345c70c1af0a8862b2b4385d14171d8fe1392c3` |
| 16 | `theorem` | [exists_apply_eq_or_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/exists-apply-eq-or-aux.md) | 303 | `result-track:ca55a419fc9f9c70f575640b3d9d7f7c3b365e1f4d4c3967ee929d56b62a1435` |
| 17 | `lemma` | [exists_apply_eq_or](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/exists-apply-eq-or.md) | 325 | `result-track:8e7cdcdaa035e71c58cea65f49bde6a1c92583542d833cb8f9ccce3eff22be82` |
| 18 | `lemma` | [apply_eq_or_of_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/apply-eq-or-of-apply-ne.md) | 342 | `result-track:3c4933c0dfb4d085994b4a4f2a21be3145069cf88405b335abe6f021a76e6148` |
| 19 | `lemma` | [forall_pairing_eq_swap_or](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/forall-pairing-eq-swap-or.md) | 355 | `result-track:3df35eb515d2815ad2f147540f4eca1c1aefd963423f7f9a303465a06b9bb807` |
| 20 | `lemma` | [forall_pairingIn_eq_swap_or](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/forall-pairingin-eq-swap-or.md) | 387 | `result-track:2cb41ffeed59b772565f0a4484e6dee864a34ea7f7e1364d47d7d8bf7dd1c374` |
| 21 | `lemma` | [pairingIn_le_zero_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/pairingin-le-zero-of-ne.md) | 404 | `result-track:876f47348326eab3fa825d94acb260bcd2962fb6a170eca6c06e82e71b1b8194` |
| 22 | `lemma` | [root_sub_root_mem_of_mem_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/root-sub-root-mem-of-mem-of-mem.md) | 410 | `result-track:5f90c580f36d1baa1af363641b9783410a8c3af84b4232fabf2ba4e9c441d22d` |
| 23 | `lemma` | [root_add_root_mem_of_mem_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteLemmasNamespaced.lean/declarations/root-add-root-mem-of-mem-of-mem.md) | 459 | `result-track:3dc180652d3ce1c6fb22792817a835f5fdce44ea8ac4bd0beb1c051cff6dafe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dade2f9c937c303d24116b99d41ae3cdb7b7e72ed4a75de2b94f36a207ca42a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
