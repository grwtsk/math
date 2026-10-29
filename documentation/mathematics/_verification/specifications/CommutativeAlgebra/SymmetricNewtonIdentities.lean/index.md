# Verification target: Symmetric Newton Identities

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0b6e77cc57c7eb931609605f60daae88e3ea7f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0b6e77cc57c7eb931609605f60daae88e3ea7f`.

Source path: `GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Rename` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairMap](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/pairmap.md) | 60 | `declaration-track:0640cd93d09555b793fa18c2e90f4c1dc7f1beef697493b27ac93602fe810144` |
| 2 | `lemma` | [pairMap_ne_self](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/pairmap-ne-self.md) | 63 | `result-track:46a78db57eeacfacb5e755c600da331d3326d0d6c41b81ae5229c44634b26f34` |
| 3 | `lemma` | [pairMap_of_snd_mem_fst](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/pairmap-of-snd-mem-fst.md) | 68 | `result-track:92937f67cd989d343a3830274db12074b263b62109cb9c9189508be95544f9b6` |
| 4 | `lemma` | [pairMap_of_snd_notMem_fst](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/pairmap-of-snd-notmem-fst.md) | 72 | `result-track:b19f65bd62304b25767eee47f0818c7b00ccfb088220768b3d1cd4786180effd` |
| 5 | `theorem` | [pairMap_involutive](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/pairmap-involutive.md) | 79 | `result-track:d6b968501821e7cdc880a724873404319b099532bb2e83732aad23876329fd6f` |
| 6 | `def` | [pairs](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/pairs.md) | 90 | `declaration-track:ecdadd9efa0008df8e12ca6f64e267a6d5892c3bfb1d11c24cec7f9e25bbd085` |
| 7 | `lemma` | [mem_pairs](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/mem-pairs.md) | 94 | `result-track:dab4401f7fc4806b8dc4fa4d83105f72849d9684cc16cf6f3fba9de03c553966` |
| 8 | `def` | [weight](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/weight.md) | 98 | `declaration-track:1c594f68cd8ac335f06bcd9c58e413ff4ba953a0bd08edaa541defe17ff65af2` |
| 9 | `theorem` | [pairMap_mem_pairs](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/pairmap-mem-pairs.md) | 101 | `result-track:ae02ff56703813395ce600608fc6f9c5a437ccc88be2dcf199b1f9f4efcf4c59` |
| 10 | `theorem` | [weight_add_weight_pairMap](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/weight-add-weight-pairmap.md) | 118 | `result-track:6c3bb5266490bee49ff7646caf948c016f08377032f0f954107d2a7435350214` |
| 11 | `theorem` | [weight_sum](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/weight-sum.md) | 142 | `result-track:b0ad937ee357d4ade357f90ec801b0f976b81741d799e1fd8130548d7115e489` |
| 12 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_sum](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-sum.md) | 147 | `result-track:2d4364f9087c004f0325b3ff7ca84861e8a6cc94924654499f7c798ec4548ab6` |
| 13 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_mem_filter_antidiagonal_sum](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-mem-filter-antidiagonal-sum.md) | 153 | `result-track:765eb42191d17678c08a58bee47af6485f9fb3b0bbb2d0f7f424d9d1eb6e9a30` |
| 14 | `lemma` | [filter_pairs_lt](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/filter-pairs-lt.md) | 162 | `result-track:fb55a747edfc9892ee7f1aec1776a257e845a83c1bfd203ea7de0ab606a22044` |
| 15 | `theorem` | [sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/sum-filter-pairs-eq-sum-filter-antidiagonal-powersetcard-sum.md) | 167 | `result-track:3a30fb343b9ab2b94b427bf2119b75795046660026a92be3633a51790986babe` |
| 16 | `theorem` | [disjoint_filter_pairs_lt_filter_pairs_eq](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/disjoint-filter-pairs-lt-filter-pairs-eq.md) | 175 | `result-track:37474b2c76421162cedaa0139dea9cee1fb9649b0fba33ef06d09855dfc5de93` |
| 17 | `theorem` | [disjUnion_filter_pairs_eq_pairs](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/disjunion-filter-pairs-eq-pairs.md) | 180 | `result-track:02dfa274aae3db57a25e216c995a0077c950f9ed39995abb15c2b23f71cafe8f` |
| 18 | `theorem` | [esymm_summand_to_weight](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/esymm-summand-to-weight.md) | 194 | `result-track:053a87413953600e1cd171768ff8357805efd8c23fe9fb01569e7155721405eb` |
| 19 | `theorem` | [esymm_to_weight](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/esymm-to-weight.md) | 198 | `result-track:d1c0ccd6f72dcffe1bfb7e775ef4dbdd52f245f56a419b927f9b103c19d5513b` |
| 20 | `theorem` | [esymm_mul_psum_summand_to_weight](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/esymm-mul-psum-summand-to-weight.md) | 204 | `result-track:6741916c07d00a882f5446d4fbd5196f0116603658bdd67b8616d3290339381f` |
| 21 | `theorem` | [esymm_mul_psum_to_weight](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/esymm-mul-psum-to-weight.md) | 214 | `result-track:80b4546d60a2f1401b3f03693837e038b5f96dbe774f3b51ef249dab95bff566` |
| 22 | `theorem` | [mul_esymm_eq_sum](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/mul-esymm-eq-sum.md) | 226 | `result-track:ac50604794b5d3cd8fa0cff0235161efa2e84d472cfb901367aae63aa24aa0a8` |
| 23 | `theorem` | [sum_antidiagonal_card_esymm_psum_eq_zero](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/sum-antidiagonal-card-esymm-psum-eq-zero.md) | 239 | `result-track:2d22ca1f0ddfa0e8c6168b53dc210aa7861eb3b417783729a842148668551403` |
| 24 | `theorem` | [psum_eq_mul_esymm_sub_sum](../../../../CommutativeAlgebra/SymmetricNewtonIdentities.lean/declarations/psum-eq-mul-esymm-sub-sum.md) | 250 | `result-track:c140ee0d45ddf5f5c6b565adf8390b1259bd969bfcf19198f869fc1cdbd80c8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d66b3f65ae28d25fcd54ea1b4b98e5750043745c3463c8d75a27b7d566159f84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NewtonIdentities/Variant2425c493481d6fb9c38b14d67d0abbaedec12e9040f55cdeaa6dc7c02c43201a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
