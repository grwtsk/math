# Verification target: Metric Space Polish Polish Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb`.

Source path: `GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.PiNat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.CompletelyMetrizable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PolishSpace](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/polishspace.md) | 66 | `declaration-track:d1eb756dc412011698d9de2ed96967db61428c258196481579f5a35050f3fb60` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instance.md) | 69 | `declaration-track:0ac289d197fafaf46843636301ff26e18492acd12fdec61d7ccfd13a2c3f5377` |
| 3 | `theorem` | [exists_nat_nat_continuous_surjective](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/exists-nat-nat-continuous-surjective.md) | 90 | `result-track:b0fe908c6cb9e4d4ad0407073b6ac25b7eba0ffeccdce30c107a6f835e996bf1` |
| 4 | `theorem` | [Metric Space Polish Polish Namespaced Source Edition1](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/polishspace-source-line-96-occurrence-2.md) | 96 | `result-track:3e7c429e1d74ba87eb1389ef8d072841e87365c56b1d09d245432f8914fdaa23` |
| 5 | `theorem` | [Metric Space Polish Polish Namespaced Source Edition1](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/polishspace-induced.md) | 107 | `result-track:9eb1ea85df42c5aff90977e4e5dfd396f4e7cf663140dfdb4d921e576b47b1f0` |
| 6 | `theorem` | [Metric Space Polish Polish Namespaced Source Edition1](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/polishspace-source-line-113-occurrence-2.md) | 113 | `result-track:e288bdf52dbaf995923cbc55ce8f25eca296bf8c9f0975bcb978299bca9f768b` |
| 7 | `theorem` | [Metric Space Polish Polish Namespaced Source Edition1](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/iinf-source-line-117-occurrence-2.md) | 117 | `result-track:fd56fd94c9d5e0b076ebca8ea5238fe5a958078e203b4046c412ae26322fe2c7` |
| 8 | `theorem` | [iInf](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/iinf.md) | 129 | `result-track:2764cdbd010006e51cde2339c1623ddb4c2a7b0c55d1a981837c9a7eb96146c3` |
| 9 | `theorem` | [exists_polishSpace_forall_le](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/exists-polishspace-forall-le.md) | 146 | `result-track:4eb6e004eb90bdd70f5e4863197b56d506fea6bc350bf459bd268d51a3c67767` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:24fc8e4e6254025b56abe19fe702b22949018c37067c1820e1afcaaf93c8155b` |
| 11 | `def` | [CompleteCopy](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/completecopy.md) | 173 | `declaration-track:1b8984cf97f00b379ffe627414329354e179394721e4053f7ef99897ad941426` |
| 12 | `instance` | [instDist](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instdist.md) | 180 | `declaration-track:1a35477f108ed32652a01da119f983bc40706b94356d3e3365c77d5a8b59fff3` |
| 13 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/dist-eq.md) | 183 | `result-track:9d689754ac318e5d0cfb2d4a87cb4a7887264bd9e0ebbe0cf610a1cacbb9e665` |
| 14 | `theorem` | [dist_val_le_dist](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/dist-val-le-dist.md) | 187 | `result-track:af0ef18a1dc23b05ff6313b7c2d8c701f52a56ea1180676951bc2745fec3d7ce` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 190 | `declaration-track:cd05361aeca5c06201f3f0bcd276708ea1da8cab5498e4d26060a4dd1b3f43ce` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 191 | `declaration-track:b94c72fb1e0a3a1f3ef91ce2a48ee64e4384bbc671dc7fc1dc1746e2d2b2f48c` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 193 | `declaration-track:5edf13f7b578cca1e4c2c795921c55d465b55bacab49cabc9a069ba65ad6f754` |
| 18 | `instance` | [instMetricSpace](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instmetricspace.md) | 204 | `declaration-track:a1ea3aa9afd86e9d997021d1d0df8fe109949349c4a8ee35fb8193cd2da701d0` |
| 19 | `instance` | [instCompleteSpace](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/instcompletespace.md) | 230 | `declaration-track:4b3397625f0f6f48db73e7f34659768c439b52e2e6cf32f98efa74f410ae66d7` |
| 20 | `theorem` | [Metric Space Polish Polish Namespaced Source Edition1](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/polishspace-source-line-261-occurrence-2.md) | 261 | `result-track:2eca0106a243b4fb0f4a81b05727b8b85314ea873c52eaedbe70b6086d6f368c` |
| 21 | `def` | [IsClopenable](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/isclopenable.md) | 278 | `declaration-track:96161125e4211255de83b926036687ae119e9fac037df290224f3e470ac0dbbc` |
| 22 | `theorem` | [Metric Space Polish Polish Namespaced Source Edition1](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/isclopenable-source-line-283-occurrence-2.md) | 283 | `result-track:57321798932ecb26650c244cfe3b4efcf3ebf8e19c89afbdebb6cf55593f9a48` |
| 23 | `theorem` | [IsClopenable.compl](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/isclopenable-compl.md) | 309 | `result-track:e6ee04cbe1f36d3ae7db157eb6a984e04bc4fd386f94b4c7051f5a4be44314be` |
| 24 | `theorem` | [Metric Space Polish Polish Namespaced Source Edition1](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/isclopenable-source-line-314-occurrence-2.md) | 314 | `result-track:ab35a5b8c99f6aa2a459364edd0f3dc5fe1067e328e4b00a08661b2c97f159cc` |
| 25 | `theorem` | [IsClopenable.iUnion](../../../../GeneralTopology/MetricSpacePolishPolishNamespacedSourceEdition1.lean/declarations/isclopenable-iunion.md) | 319 | `result-track:857252c1c2b8093f605c2467afb198f926e6712fd9057b0e5aeb3f071259447c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01efd3f59c71e77119e108ba6b3c69fa1f4e3879342b2fe1cab70f43a03d0f4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
