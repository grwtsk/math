# Verification target: ZFCOrdinal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f40a2ae12c1639cdf9070fa3d9f9c80afe07c466",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f40a2ae12c1639cdf9070fa3d9f9c80afe07c466`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GameAdd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.ZFC.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTransitive](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive.md) | 47 | `declaration-track:fed683fd3cd8784e8e42f1a566636b6e5049559167adef069c268ded323e00fc` |
| 2 | `theorem` | [isTransitive_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-empty.md) | 51 | `result-track:bcb1e14b1c72601e387547290f798d016bd10558e53fa663db6a1cd4f9b1629e` |
| 3 | `theorem` | [IsTransitive.subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-subset-of-mem.md) | 53 | `result-track:5ab76e1313287b2666cb4d9d6e52bb58825764c58aacf0c0e455ceb30b8f9455` |
| 4 | `theorem` | [isTransitive_iff_mem_trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-iff-mem-trans.md) | 55 | `result-track:ff890aec85865fe26568868ed575affdf2fa55c00c3552fa69a1a886c6b5a738` |
| 5 | `theorem` | [IsTransitive.inter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-inter.md) | 60 | `result-track:8f6df73dfea52da92abca86afbecace1d4c92b937a4a96d5407b5d7ae4b576e4` |
| 6 | `theorem` | [IsTransitive.sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-sunion.md) | 66 | `result-track:a56df21cf01476c01e309bfb8eee062e9d8ba0f3ac727a2c390e5fcaf0c3e51e` |
| 7 | `theorem` | [IsTransitive.sUnion'](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-sunion-source-edition-2.md) | 72 | `result-track:d616f5fb43032ef1f758775f834c2c1066cb2cdaf61e00ef229be5499b5f60e0` |
| 8 | `theorem` | [IsTransitive.union](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-union.md) | 77 | `result-track:e43db54d8d360a9bebfe1f486919e70a63299b7c815cdf6c7261e04b75f5e0f5` |
| 9 | `theorem` | [IsTransitive.powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-powerset.md) | 86 | `result-track:a84fceb16fbf171bae246fe2ba64dbd287d362bc5ffa3981eedc4bb23b0287c8` |
| 10 | `theorem` | [isTransitive_iff_sUnion_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-iff-sunion-subset.md) | 91 | `result-track:cf703fc9aaaad487b19f9ef8bd2cded23ef0647b3b43af8e517effc1bfd99bf7` |
| 11 | `theorem` | [isTransitive_iff_subset_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istransitive-iff-subset-powerset.md) | 100 | `result-track:cfed33736f7be9245fc1dcfd7b1a2ecfa44761cd05436c28079359d5bb289b82` |
| 12 | `structure` | [IsOrdinal](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/isordinal.md) | 112 | `declaration-track:3c41bbecc041a141ebef9c22550e9c651574b51dff85377b48fa90e336ba7bf5` |
| 13 | `theorem` | [subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/subset-of-mem.md) | 120 | `result-track:8c0e513995badd404372e43af404ae0a08ff0a143ae61e9f7bc76ff7c226f838` |
| 14 | `theorem` | [mem_trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/mem-trans.md) | 123 | `result-track:c2fe9b398e656e7a0949f6976f7d9944a051a1561a8e6fd502d844a8b1b7588c` |
| 15 | `theorem` | [isTrans](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istrans.md) | 126 | `result-track:9b01ff2d989d8cf778aa70230781d29fcc18899e6d056d15ebf05bafa014ad31` |
| 16 | `theorem` | [ZFCOrdinal Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/isordinal-iff-istrans.md) | 131 | `result-track:0e80addc77a773c6b75c92810430232f344f21658b1f0b1fddd744a866054792` |
| 17 | `theorem` | [mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/mem.md) | 140 | `result-track:6b4460009a7da23e2cff3c70371ee2f892f91e7c9f2c498cf2e29eecc2e8cc6e` |
| 18 | `theorem` | [ZFCOrdinal Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/isordinal-iff-forall-mem-istransitive.md) | 146 | `result-track:a9b6eddbc7156adb12aeb50773cb21d57a2c9ebc1d4cf2d7c6dc8425379690dc` |
| 19 | `theorem` | [ZFCOrdinal Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/isordinal-iff-forall-mem-isordinal.md) | 152 | `result-track:2d7951fd1486d8fd62f3bdbd374dda58e0506e32dbd08f57125890a394728e9b` |
| 20 | `theorem` | [subset_iff_eq_or_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/subset-iff-eq-or-mem.md) | 158 | `result-track:5383228a80c1836025dc6a6b8819d70fc0ac9b0fa33417f3b6f6a65ad038fd53` |
| 21 | `theorem` | [mem_of_subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/mem-of-subset-of-mem.md) | 180 | `result-track:96c5b8865189b1e315180dfe92da91d013a0713d601e7658463b7be3ef2f1d54` |
| 22 | `theorem` | [notMem_iff_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/notmem-iff-subset.md) | 186 | `result-track:2b17ea2dc52284bb4c53434a713cb02393a96082d31622f610e1f4a79a76be10` |
| 23 | `theorem` | [not_subset_iff_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/not-subset-iff-mem.md) | 196 | `result-track:296e2e67157a640211dfd4d3ac66757b8f0a4855fab6477c1fca0392abe97354` |
| 24 | `theorem` | [mem_or_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/mem-or-subset.md) | 199 | `result-track:c037742310f7bbe86907c51d25f18f70221b769f6131bb090f108c635ab847da` |
| 25 | `theorem` | [subset_total](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/subset-total.md) | 203 | `result-track:9f02312561b350b71e6769361f7289defe353647bc502c02ed6617a1950b9d98` |
| 26 | `theorem` | [mem_trichotomous](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/mem-trichotomous.md) | 208 | `result-track:83e5204857240909fb752dae9f400777874d672198eef80ff95145663524c56d` |
| 27 | `theorem` | [isTrichotomous](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/istrichotomous.md) | 212 | `result-track:8ae3c87a0e399616b89b27a3e711ae52cd34c9b87c01435301be9b07592805f3` |
| 28 | `theorem` | [ZFCOrdinal Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/isordinal-iff-istrichotomous.md) | 216 | `result-track:07831961bbe6b426ef02df2029e59f5afd839e79f1ece0dee19c248937b62e92` |
| 29 | `theorem` | [isWellOrder](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/iswellorder.md) | 228 | `result-track:07ee9422982653f6edf39d0a2f6b6eb0268b2fb328f4cb9b1569187deb8a0a6b` |
| 30 | `theorem` | [ZFCOrdinal Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/isordinal-iff-iswellorder.md) | 234 | `result-track:4796f7d8f9dd6de720c6d630ae359834abce78a6d880965827effbfcec4a0159` |
| 31 | `theorem` | [isOrdinal_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/declarations/isordinal-empty.md) | 244 | `result-track:03a53877bf5df1d37bff607e2a7886b08fbca27822e4068db0bb5783d5da327c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bde00c9e2f5a8f079095c0bf260cdb1be948ba048e2e600655d04ad95aa2af2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
