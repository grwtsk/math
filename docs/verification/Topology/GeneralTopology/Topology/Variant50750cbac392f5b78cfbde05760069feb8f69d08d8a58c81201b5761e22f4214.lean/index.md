# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c94df9812d0aa9472f246d518a938f3b94ebd2bf",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c94df9812d0aa9472f246d518a938f3b94ebd2bf`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Enum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/instance--e8d85eeae460312df46f447d.md) | 36 | `declaration-track:e8d85eeae460312df46f447df2f6f354cee0b14ed3efe96fe697333a9c23b980` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/instance--585f8ec6d8138466660a45ad.md) | 37 | `declaration-track:585f8ec6d8138466660a45add98ccefabdcd397054270ac2687a8fe0385d8992` |
| 3 | `theorem` | [isOpen_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isopen-singleton-iff--0185275651bc234238c07876.md) | 39 | `result-track:0185275651bc234238c07876e1533a01e668b7ba5307e49700d230ef2e309395` |
| 4 | `theorem` | [nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/nhdsgt--ebb709e10e14dcd5e6f83852.md) | 54 | `result-track:ebb709e10e14dcd5e6f83852ed0193fab73282a27d50d9a60edc9b92e7048ced` |
| 5 | `theorem` | [nhdsLT_eq_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/nhdslt-eq-nhdsne--61f2e1773cab69eb5d553215.md) | 59 | `result-track:61f2e1773cab69eb5d55321547a32de9c1263396419ca8c67b493417f34e954b` |
| 6 | `theorem` | [nhdsLE_eq_nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/nhdsle-eq-nhds--7c978d2dd5d5dfc0f477c4ad.md) | 65 | `result-track:7c978d2dd5d5dfc0f477c4ad470d897242e09fea1acf378c6e69fad877991a59` |
| 7 | `theorem` | [hasBasis_nhds_Ioc](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/hasbasis-nhds-ioc--b5c49de06bc2785b0e6e09ad.md) | 71 | `result-track:b5c49de06bc2785b0e6e09ad7b52c8bec5a34d99acdce99d6841d4bf9e99b653` |
| 8 | `theorem` | [nhds_eq_pure](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/nhds-eq-pure--a1f54e3463e21fe10f7b313b.md) | 77 | `result-track:a1f54e3463e21fe10f7b313be13555f1f1a0bfd4c77a840752132c5700d6e864` |
| 9 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isopen-iff--e259c92850390d58b1fe774d.md) | 81 | `result-track:e259c92850390d58b1fe774dd7601b26c8244adf2af714dc5020c48534a21b35` |
| 10 | `theorem` | [mem_closure_tfae](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/mem-closure-tfae--cd6dc0e8b94f59adbd26eed5.md) | 90 | `result-track:cd6dc0e8b94f59adbd26eed517e89c0ffd451e580fc595b7e0f646e1cff14abf` |
| 11 | `theorem` | [mem_closure_iff_iSup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/mem-closure-iff-isup--5bb2e95d5214821310e2bb8f.md) | 129 | `result-track:5bb2e95d5214821310e2bb8fa3f7ec653006afd64927f8c7134be8d13edd8996` |
| 12 | `theorem` | [mem_iff_iSup_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/mem-iff-isup-of-isclosed--4a38ce2b8d484a1a61db6a33.md) | 135 | `result-track:4a38ce2b8d484a1a61db6a33a7d92122190fd28d914fd70aff9916c034a38f13` |
| 13 | `theorem` | [mem_closure_iff_bsup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/mem-closure-iff-bsup--34a3402263ea31409bdf7e7d.md) | 140 | `result-track:34a3402263ea31409bdf7e7da02e3e78fc006bd9cdedeac5755f464c5a8784be` |
| 14 | `theorem` | [mem_closed_iff_bsup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/mem-closed-iff-bsup--16afba39ef5833a45d44fc2b.md) | 147 | `result-track:16afba39ef5833a45d44fc2b0da4f7fee1ee3bf56630ab7bd350b1accda186af` |
| 15 | `theorem` | [isClosed_iff_iSup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isclosed-iff-isup--a287f01e8cb9a4889190a99e.md) | 153 | `result-track:a287f01e8cb9a4889190a99e8cbac0774cf7f6c86a16eb89b1d38bfba0186b43` |
| 16 | `theorem` | [isClosed_iff_bsup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isclosed-iff-bsup--ee1d311ff5424a5e227ee8be.md) | 162 | `result-track:ee1d311ff5424a5e227ee8be4d7f7568819aeb28bcbb51f5c1ba43dadd500874` |
| 17 | `theorem` | [isLimit_of_mem_frontier](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/islimit-of-mem-frontier--b8356d9a8eb89be49d8a2cd4.md) | 173 | `result-track:b8356d9a8eb89be49d8a2cd477291839547ff8a85f09055b2ce740cdf0f9ad91` |
| 18 | `theorem` | [isNormal_iff_strictMono_and_continuous](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isnormal-iff-strictmono-and-continuous--90583ca51523a14eee9f5b45.md) | 183 | `result-track:90583ca51523a14eee9f5b4534e1a3d7b876693c83b03f34573068c0539cff05` |
| 19 | `theorem` | [enumOrd_isNormal_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/enumord-isnormal-iff-isclosed--8d434b278af7713a7d77c50e.md) | 205 | `result-track:8d434b278af7713a7d77c50e437ddd82041b8ce76dfb9ab3f641e606cdcf71d2` |
| 20 | `def` | [IsAcc](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isacc--0d87df4f2924cc0580bcfc8f.md) | 236 | `declaration-track:0d87df4f2924cc0580bcfc8f71899691419c00eeaa828b68ada77d77f6d48557` |
| 21 | `def` | [IsClosedBelow](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isclosedbelow--203be8384e35d634919e2899.md) | 241 | `declaration-track:203be8384e35d634919e289975e9aab586f889d9a8a7c2ab0f97f01a77ee96a2` |
| 22 | `theorem` | [isAcc_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isacc-iff--988c78c19072023d2a542445.md) | 244 | `result-track:988c78c19072023d2a542445b0fd6c362874fe0320549351457482f06721f3c8` |
| 23 | `theorem` | [IsAcc.forall_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isacc-forall-lt--6e875bb5bea862746f7bad42.md) | 267 | `result-track:6e875bb5bea862746f7bad424a241ac959e890b092bbed49ebee92638130976d` |
| 24 | `theorem` | [IsAcc.pos](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isacc-pos--bd898c31b41d0f78dbcfc0dc.md) | 270 | `result-track:bd898c31b41d0f78dbcfc0dc330240aba422244240d5c2cbcb72180e79f857ef` |
| 25 | `theorem` | [IsAcc.isLimit](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isacc-islimit--4a7c6cfd8a3985e92964beee.md) | 273 | `result-track:4a7c6cfd8a3985e92964beee80ed9e473f0518ce484b374d936341ed96c3715b` |
| 26 | `theorem` | [IsAcc.mono](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isacc-mono--2e5f0bfb3d90253b6c15d415.md) | 279 | `result-track:2e5f0bfb3d90253b6c15d415e11b5e9b78c31526c4468d77deb4207615618724` |
| 27 | `theorem` | [IsAcc.inter_Ioo_nonempty](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isacc-inter-ioo-nonempty--d74f6f20afb67426de9baa9e.md) | 284 | `result-track:d74f6f20afb67426de9baa9e7850c28b03b66d777bfc1f4e21d3844cde051608` |
| 28 | `theorem` | [accPt_subtype](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/accpt-subtype--c41505fbaa5c0b952222cbba.md) | 288 | `result-track:c41505fbaa5c0b952222cbba49db00abb42e1348741c84be84d609c8731de896` |
| 29 | `theorem` | [isClosedBelow_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isclosedbelow-iff--6f77a2192331601044376c7a.md) | 341 | `result-track:6f77a2192331601044376c7a742886f38c7161a18734be166aea13eaf80311c8` |
| 30 | `theorem` | [IsClosedBelow.sInter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isclosedbelow-sinter--5090b9e5bd1f5689b0925e95.md) | 358 | `result-track:5090b9e5bd1f5689b0925e950800cf84fac4b639ce2cdef178fcce89176ae4c5` |
| 31 | `theorem` | [IsClosedBelow.iInter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/declarations/isclosedbelow-iinter--8fdc80640e973d94a661a5cd.md) | 364 | `result-track:8fdc80640e973d94a661a5cdbabd840cb669f358d34e6ab9d35e62b1f7df38fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
