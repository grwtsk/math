# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba2974f5702c832a8dbdae18fb014df5ff9d2f27",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba2974f5702c832a8dbdae18fb014df5ff9d2f27`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Enum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/instance--34b52f11d4323488132b3baa.md) | 44 | `declaration-track:34b52f11d4323488132b3baa93ea3172c965db1d43f127312e7b165fdedeac66` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/instance--bb339724c2590fd466c37a56.md) | 45 | `declaration-track:bb339724c2590fd466c37a56a2743d14a2cc4ee63c72dae2239be5d0ea905624` |
| 3 | `theorem` | [isOpen_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isopen-singleton-iff--10b98cd87fab6e550d07855a.md) | 47 | `result-track:10b98cd87fab6e550d07855a324257bbd39ad37c1063c438288dbcc4c5a18e49` |
| 4 | `theorem` | [nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/nhdsgt--a6571cfe6095b83fd481ca08.md) | 62 | `result-track:a6571cfe6095b83fd481ca080aa4ad9e03a58946b83f767f6b6ae3f17252a813` |
| 5 | `theorem` | [nhdsLT_eq_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/nhdslt-eq-nhdsne--5dcfddeaed679a540b843533.md) | 67 | `result-track:5dcfddeaed679a540b843533ace984e7b528f525925bd902679f6d90a811f950` |
| 6 | `theorem` | [nhdsLE_eq_nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/nhdsle-eq-nhds--d29c4791e1079af8cc268af0.md) | 73 | `result-track:d29c4791e1079af8cc268af07fe832ec3456d50802efa4b9716a7bd02772cd4c` |
| 7 | `theorem` | [hasBasis_nhds_Ioc](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/hasbasis-nhds-ioc--542e2f7f90dc188d292e5553.md) | 79 | `result-track:542e2f7f90dc188d292e555393b8dea8d0d5f44f5b952de23b98305b29897dba` |
| 8 | `theorem` | [nhds_eq_pure](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/nhds-eq-pure--b3452197648dd13cb8e8926d.md) | 85 | `result-track:b3452197648dd13cb8e8926dfe88741ae2f9c8f8685638a91a9d755aec8ae0c8` |
| 9 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isopen-iff--2c8cf9d3b72f79a8e5ca2ccd.md) | 89 | `result-track:2c8cf9d3b72f79a8e5ca2ccd43806b47a8e27527f4d0f0cbc17754d009bac557` |
| 10 | `theorem` | [mem_closure_tfae](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/mem-closure-tfae--62b7067acb39d7d301c56e4c.md) | 98 | `result-track:62b7067acb39d7d301c56e4cd7c2976cd37895e01493a94bcda86adc56f7b22b` |
| 11 | `theorem` | [mem_closure_iff_iSup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/mem-closure-iff-isup--d953c2896da7c18340507751.md) | 137 | `result-track:d953c2896da7c18340507751e363198871fbe8052f62fb016a026433952768f8` |
| 12 | `theorem` | [mem_iff_iSup_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/mem-iff-isup-of-isclosed--fdce741d701c45f25a40dba4.md) | 143 | `result-track:fdce741d701c45f25a40dba4cdb02ba4ae3a9a2e29e39b9d8be028b9d107b25d` |
| 13 | `theorem` | [mem_closure_iff_bsup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/mem-closure-iff-bsup--d647a6cb59a3e8c6315c9a47.md) | 148 | `result-track:d647a6cb59a3e8c6315c9a47e70ce939f4d99cca36de0a2a07722e48d6f9d5c9` |
| 14 | `theorem` | [mem_closed_iff_bsup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/mem-closed-iff-bsup--d06e199f01fe3a60d71946cb.md) | 155 | `result-track:d06e199f01fe3a60d71946cb0550697f87e129a8dc104261cdc81d4d15cfbaa6` |
| 15 | `theorem` | [isClosed_iff_iSup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isclosed-iff-isup--ab1d6e004bfbadd5d5a4ee75.md) | 161 | `result-track:ab1d6e004bfbadd5d5a4ee75099874e8efbe6a606fb652b9e49fd4513c342489` |
| 16 | `theorem` | [isClosed_iff_bsup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isclosed-iff-bsup--b1b1204c35270c405d2a4096.md) | 170 | `result-track:b1b1204c35270c405d2a40968080e99f77c563971f50de283ad7f08708832353` |
| 17 | `theorem` | [isLimit_of_mem_frontier](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/islimit-of-mem-frontier--7505f63343e11becd4ee7c01.md) | 181 | `result-track:7505f63343e11becd4ee7c01110bfce21ecc475ad8b0078b44f0e38d79f89d78` |
| 18 | `theorem` | [isNormal_iff_strictMono_and_continuous](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isnormal-iff-strictmono-and-continuous--76b3371613b96d0ff6da1608.md) | 191 | `result-track:76b3371613b96d0ff6da1608b594c2a3a61474335f1c9a587ce07f3e843eaaff` |
| 19 | `theorem` | [enumOrd_isNormal_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/enumord-isnormal-iff-isclosed--7fe15899e7a8435b699baa25.md) | 213 | `result-track:7fe15899e7a8435b699baa25eb1d4f7ef0a4250117cc748ed6fef5b9e8781f5e` |
| 20 | `def` | [IsAcc](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isacc--ce5d4d5a18e05d57f6f524a7.md) | 244 | `declaration-track:ce5d4d5a18e05d57f6f524a709e57042627ad3554baa231798dd0fa0bc8341dd` |
| 21 | `def` | [IsClosedBelow](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isclosedbelow--d1f5b640a89d6506fc103c67.md) | 249 | `declaration-track:d1f5b640a89d6506fc103c6779c30b9287b27f414ea1bbe0cc5dea675e16b7ec` |
| 22 | `theorem` | [isAcc_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isacc-iff--984e026ece84153966c3b956.md) | 252 | `result-track:984e026ece84153966c3b956274d6c21f79be46c44daa5dd97086f05c6031944` |
| 23 | `theorem` | [IsAcc.forall_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isacc-forall-lt--6e1db08da0e9d49fd7a80d20.md) | 275 | `result-track:6e1db08da0e9d49fd7a80d20f1ca9ad89882d5df314cd7d916c881fd88dd0ef1` |
| 24 | `theorem` | [IsAcc.pos](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isacc-pos--b75649b3fd26606895d0f372.md) | 278 | `result-track:b75649b3fd26606895d0f3729182b1172be05fd6a3c8fc451f6fc8b92dae8d3b` |
| 25 | `theorem` | [IsAcc.isLimit](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isacc-islimit--92df850134a52d87cc1f90f8.md) | 281 | `result-track:92df850134a52d87cc1f90f898b7fbff76e2ac07727ac731ffb9fdbb9439ff4c` |
| 26 | `theorem` | [IsAcc.mono](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isacc-mono--df00d55e4d912b5a20d84b0c.md) | 287 | `result-track:df00d55e4d912b5a20d84b0ca9ebde9d4965d05be48009fdfc8e30690f8eee62` |
| 27 | `theorem` | [IsAcc.inter_Ioo_nonempty](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isacc-inter-ioo-nonempty--3a904a127c42c43139e7a80a.md) | 292 | `result-track:3a904a127c42c43139e7a80a6fd62f7e2dbb46ccba97ff7e4c9235e71be65d4b` |
| 28 | `theorem` | [accPt_subtype](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/accpt-subtype--2c6724b38625e00876de13d3.md) | 296 | `result-track:2c6724b38625e00876de13d38ed8ab57c9a91cd28341251164636f2fd4c7743b` |
| 29 | `theorem` | [isClosedBelow_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isclosedbelow-iff--56672ae965e7651a756ec2ce.md) | 349 | `result-track:56672ae965e7651a756ec2ceb181c702f7d8507353827dfdeeae05618fa85b75` |
| 30 | `theorem` | [IsClosedBelow.sInter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isclosedbelow-sinter--7d1285573c5a84e13c6857f7.md) | 366 | `result-track:7d1285573c5a84e13c6857f7fab69ef741102eddfa9cb836a21601a8b0995822` |
| 31 | `theorem` | [IsClosedBelow.iInter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant06909ffbbfa0588d815f3a1fefbfd26a257cb51dd2b9c337c6d8ef75ea22f38b.lean/declarations/isclosedbelow-iinter--8d239e209a5ea7ccfb4f8564.md) | 372 | `result-track:8d239e209a5ea7ccfb4f85649c7c029f29118d02f6240e7d8b8474abaa0e18ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
