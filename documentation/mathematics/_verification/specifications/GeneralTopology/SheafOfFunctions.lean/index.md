# Verification target: Sheaf Of Functions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "760428ab0d2c8cc28a59f89cba44f4e7125e512c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheafOfFunctions.lean/index.md) · [Full source](../../../../GeneralTopology/SheafOfFunctions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `760428ab0d2c8cc28a59f89cba44f4e7125e512c`.

Source path: `GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.PresheafOfFunctions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toTypes_isSheaf](../../../../GeneralTopology/SheafOfFunctions.lean/declarations/totypes-issheaf.md) | 46 | `result-track:120e36ac9032ee9d43a0c2088813f5010b047fe52735bc353aa04e5c0de37e25` |
| 2 | `theorem` | [toType_isSheaf](../../../../GeneralTopology/SheafOfFunctions.lean/declarations/totype-issheaf.md) | 78 | `result-track:524cdbe07fe99b3453d304e55af08318a6d5354aa0d2e74fa7a2edcdf2897bd1` |
| 3 | `def` | [sheafToTypes](../../../../GeneralTopology/SheafOfFunctions.lean/declarations/sheaftotypes.md) | 88 | `declaration-track:40dc54453e841d122e64b24e3e92ab66398d93598bffb377e52b5634a58b0e9c` |
| 4 | `def` | [sheafToType](../../../../GeneralTopology/SheafOfFunctions.lean/declarations/sheaftotype.md) | 93 | `declaration-track:2e657702ed41b82664e24a871220706efe0fcc7f3f462bc24027024e67e93341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d65eb41f7571da33b7a7e3d7bdab609033f6473e1bedf03c4e729c3ec0f0e0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
