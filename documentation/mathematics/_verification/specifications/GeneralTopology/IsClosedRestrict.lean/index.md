# Verification target: Is Closed Restrict

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b7ea6e540e2392f3c4e13f1fbf60bffced093e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IsClosedRestrict.lean/index.md) · [Full source](../../../../GeneralTopology/IsClosedRestrict.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b7ea6e540e2392f3c4e13f1fbf60bffced093e`.

Source path: `GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reorderRestrictProd](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/reorderrestrictprod.md) | 35 | `declaration-track:e97c431070adf51d949aaa25aed5cd3edf3705d59f5d0e7478f4df626158d557` |
| 2 | `lemma` | [reorderRestrictProd_of_mem](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/reorderrestrictprod-of-mem.md) | 43 | `result-track:fe760f5730d8db7b471706ff0024345cad426800bf7393f3120bf0f0a39ecf84` |
| 3 | `lemma` | [reorderRestrictProd_of_compl](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/reorderrestrictprod-of-compl.md) | 49 | `result-track:fb51da28760fa6e8f31da93e4829110ad0d3b555baabea74ca49b398366c676c` |
| 4 | `lemma` | [restrict_compl_reorderRestrictProd](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/restrict-compl-reorderrestrictprod.md) | 55 | `result-track:99bbf66fa38595fee0e99923fc0175a4325602e7337b8476dd800601287256c3` |
| 5 | `lemma` | [continuous_reorderRestrictProd](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/continuous-reorderrestrictprod.md) | 58 | `result-track:84b14c26b303c28a2c92848e80fd9c7c24aca19d5cedc283d6aa52d01d7da72b` |
| 6 | `lemma` | [reorderRestrictProd_mem_preimage_image_restrict](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/reorderrestrictprod-mem-preimage-image-restrict.md) | 66 | `result-track:520609c9ae01b02f07dccd9b1b946b1b44a31f07f8ad7aded25befe0da794977` |
| 7 | `lemma` | [reorderRestrictProd_restrict_compl](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/reorderrestrictprod-restrict-compl.md) | 72 | `result-track:ed69fdbf68505a34501e02ba3436e6cc04c0b129768e209df543f5692cfb8a7c` |
| 8 | `def` | [_root_.Homeomorph.preimageImageRestrict](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/root-homeomorph-preimageimagerestrict.md) | 79 | `declaration-track:625bcabf7403f52e887ebc4fcf890e3a88fa050017e1fcd1749989079632b499` |
| 9 | `lemma` | [image_snd_preimageImageRestrict](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/image-snd-preimageimagerestrict.md) | 99 | `result-track:103395a910e9e40331c45f051a8de6bf8a3217af3b38c8694e0bebc09d4fabe0` |
| 10 | `theorem` | [IsCompact.isClosed_image_restrict](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/iscompact-isclosed-image-restrict.md) | 121 | `result-track:ff4bfc2c0f5dd30af632e15ff2e7a3a962d88200b77c6e31350535369d56131b` |
| 11 | `lemma` | [isClosedMap_restrict_of_compactSpace](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/isclosedmap-restrict-of-compactspace.md) | 131 | `result-track:e191cfefb8bac25fe6325f0a4e9fbddfd43b3c38da5c1cf176d11dbfc8d6ab25` |
| 12 | `lemma` | [IsClosed.isClosed_image_eval](../../../../GeneralTopology/IsClosedRestrict.lean/declarations/isclosed-isclosed-image-eval.md) | 138 | `result-track:91114ec4973915c3cc699135e1cfd19712afd5e0b4fea9df77ae03fd7bdb13d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15d46c4ff23814c4d8408ad61b735b96aa3b8aa67201193fff7ed77b9a96b853 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
