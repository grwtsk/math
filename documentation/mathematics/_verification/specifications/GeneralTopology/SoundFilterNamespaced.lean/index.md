# Verification target: Sound Filter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b0d0d23eb9721a60cf494b88a851b17a89bb525",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SoundFilter/Variant4f265d56c8fafa22dd2227b24648780d75c4e49ef53dd63c4e01e8c455351f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SoundFilterNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SoundFilterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b0d0d23eb9721a60cf494b88a851b17a89bb525`.

Source path: `GRWTSK/Topology/GeneralTopology/SoundFilter/Variant4f265d56c8fafa22dd2227b24648780d75c4e49ef53dd63c4e01e8c455351f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SoundFilter/Variant4f265d56c8fafa22dd2227b24648780d75c4e49ef53dd63c4e01e8c455351f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Accepts](../../../../GeneralTopology/SoundFilterNamespaced.lean/declarations/accepts.md) | 13 | `declaration-track:f664dcda429da08cad6c7bb776bbe10c1f50e7c23a71263cedd0438ad64da56a` |
| 2 | `theorem` | [prime_or_not_dvd](../../../../GeneralTopology/SoundFilterNamespaced.lean/declarations/prime-or-not-dvd.md) | 15 | `result-track:d9a28c3d534b5d274cb4cff65e488ed50284bb10cb83cbecf3d68b1b14795de4` |
| 3 | `theorem` | [sound_filter_retains_prime](../../../../GeneralTopology/SoundFilterNamespaced.lean/declarations/sound-filter-retains-prime.md) | 25 | `result-track:8f3bea16fa126000d1c9acf52597c705f4eded45a12b6bcdfa6ce6531a333924` |
| 4 | `theorem` | [filter_retains_own_prime](../../../../GeneralTopology/SoundFilterNamespaced.lean/declarations/filter-retains-own-prime.md) | 28 | `result-track:6ca8b4de3f9ee191357858455130872a0a03a6946b1d719568a254e8da4e1089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4aed4f6a77aaf52b826582292fe0c4b98265d6fc1b6f19284a9ee37b328ac62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SoundFilter/Variant4f265d56c8fafa22dd2227b24648780d75c4e49ef53dd63c4e01e8c455351f72.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SoundFilter/Variant4f265d56c8fafa22dd2227b24648780d75c4e49ef53dd63c4e01e8c455351f72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
