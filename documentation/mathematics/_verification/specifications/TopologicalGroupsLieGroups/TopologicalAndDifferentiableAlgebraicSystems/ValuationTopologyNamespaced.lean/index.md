# Verification target: Valuation Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee5cb3374d52aa7bd6382a24270bcde5a8136ea2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee5cb3374d52aa7bd6382a24270bcde5a8136ea2`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformFilterBasis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subgroups_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/subgroups-basis.md) | 41 | `result-track:a242ec7e57a8bad5258fe6746282536105dbddd4c0b7694742ce36506b2f9e03` |
| 2 | `class` | [Valued](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/valued.md) | 97 | `declaration-track:aa8ebd8bcc62c66e339cc1beabf31bb380682d9b950de5623e11d6bb5d4ddc4b` |
| 3 | `def` | [mk'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/mk.md) | 105 | `declaration-track:4916861a427c4d319ad2c07e624e2571877dece2118040035e3031da7c8829d6` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/hasbasis-nhds-zero.md) | 118 | `result-track:aebca7e214299def724c5a2bb325dac5d7ef510f40aefc8fae5a1f8c02514090` |
| 5 | `theorem` | [hasBasis_uniformity](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/hasbasis-uniformity.md) | 123 | `result-track:a5b77b40eccf879c4710fe197cc4ad2f13d98b015b0e3d5de65754c84ba3aef3` |
| 6 | `theorem` | [toUniformSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/touniformspace-eq.md) | 128 | `result-track:9385c9863e3b69f24eace3814a0c1962c1e56737664d8a2157da496736ac889e` |
| 7 | `theorem` | [mem_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/mem-nhds.md) | 135 | `result-track:50c0ee22c152f0eb033ed5fd66d55f66d33dcd78a1199b164974d76958459bac` |
| 8 | `theorem` | [mem_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/mem-nhds-zero.md) | 139 | `result-track:c17a1665c088215ccdf10d5d5402ba2a9badc1e0d7b19129763ebe592b1889e6` |
| 9 | `theorem` | [loc_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/loc-const.md) | 142 | `result-track:caa567f679feb937bf9a7e153a95ab8831a0183b11a02e130c6bc0309ea3ba4a` |
| 10 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/instance.md) | 149 | `declaration-track:776526e995134c425ba5a25d6044d3ace0d7402e99496ab426aa1a62ae128a2b` |
| 11 | `theorem` | [cauchy_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/cauchy-iff.md) | 152 | `result-track:53bdc5474647a98ee77be3424cc414271712085c784ffc45fd5e6567c4873e32` |
| 12 | `theorem` | [isOpen_ball](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isopen-ball.md) | 166 | `result-track:b2e7fa89411add066954db545c6f5ea232870523f103d18d1a801524a49228ad` |
| 13 | `theorem` | [isClosed_ball](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclosed-ball.md) | 177 | `result-track:0a990fbca6fc26b1ba901f9b2423300511db885661be6695968dc7f2159a6171` |
| 14 | `theorem` | [isClopen_ball](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclopen-ball.md) | 185 | `result-track:580bcb22f35fe6f1fc42c4a53f365f5846e7592e19d66119ac49e1c629e9edfa` |
| 15 | `theorem` | [isOpen_closedball](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isopen-closedball.md) | 189 | `result-track:a3b5f08956e3122d678fa836922062963c75636551ad8a53132cb534356d863b` |
| 16 | `theorem` | [isClosed_closedBall](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclosed-closedball.md) | 198 | `result-track:c09f6e907d698857598d43f0a7af362fdbbedb1aa85fb65e9231e2b6fdf72a3c` |
| 17 | `theorem` | [isClopen_closedBall](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclopen-closedball.md) | 207 | `result-track:2ee2c3d1a8df840c76625709927877390c97be6e5c4834bd7fffd692b71ecbad` |
| 18 | `theorem` | [isClopen_sphere](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclopen-sphere.md) | 211 | `result-track:f6ac949972ad0f285e4511f53960b66ec3a35290191aacc061c33c187b818317` |
| 19 | `theorem` | [isOpen_sphere](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isopen-sphere.md) | 219 | `result-track:5b7f1856911af7c868beb66c48d0563987b17c2d01f13fb82faff337f7494472` |
| 20 | `theorem` | [isClosed_sphere](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclosed-sphere.md) | 223 | `result-track:d75f7657d26426c520f5301eca86453495589f283eabfe5fe2b3bd16288fbc99` |
| 21 | `theorem` | [isOpen_integer](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isopen-integer.md) | 229 | `result-track:19e5a8e097ea6bcb0d599c652bff4d3632a29588093a5caf7075037a05d1bdce` |
| 22 | `theorem` | [isClosed_integer](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclosed-integer.md) | 236 | `result-track:dbe270492267bbb4a5866eab3ffe55382a7b898383e629b629f4e279b4cea72a` |
| 23 | `theorem` | [isClopen_integer](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclopen-integer.md) | 240 | `result-track:76e171c61f136ca6f5bafac4d2e24c63b400c937bb11994090713c2b3aa0b1b7` |
| 24 | `theorem` | [isOpen_valuationSubring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isopen-valuationsubring.md) | 244 | `result-track:244c8e1fdedd0ab6139a55bb04854818d421dee4ab2ec64bebbf89b1b8523983` |
| 25 | `theorem` | [isClosed_valuationSubring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclosed-valuationsubring.md) | 252 | `result-track:0d6103d912590b520b5e1df9cd1cc8799eb3003267d592ada9959be650018597` |
| 26 | `theorem` | [isClopen_valuationSubring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ValuationTopologyNamespaced.lean/declarations/isclopen-valuationsubring.md) | 257 | `result-track:43da8fc98f54498e6c40b555b48ebde9f52ccafda5133d42c69ea80fab211354` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6809ebd9dee0e11342474092054b830f2fb757ad57ddd45ac20eab692e01640b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
