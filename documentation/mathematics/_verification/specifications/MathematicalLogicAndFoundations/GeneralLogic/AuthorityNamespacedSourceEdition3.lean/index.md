# Verification target: Authority Namespaced Source Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf259d8c0ea4df22badbb493b547e032e702487e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf259d8c0ea4df22badbb493b547e032e702487e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Homology.FiniteOS.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Homology.Coverage` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteOSHomologyStabilityCriteria](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finiteoshomologystabilitycriteria.md) | 43 | `declaration-track:863607e6bc5d046e266276d9c25b782fa0902b3f35c2fab08d444614e89dbd76` |
| 2 | `def` | [FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finiteoshomologystabilitycriteria-certifiedforhomologystability.md) | 131 | `declaration-track:99414e1329f9d6be01cdce630d7a062cf1537443681a41d40ee12b701390024d` |
| 3 | `theorem` | [FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability_of_fields](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finiteoshomologystabilitycriteria-certifiedforhomologystability-of-field.md) | 157 | `result-track:43388764920c6fef8501d33e803f14608469404df0e144909e9a2477e500e0b1` |
| 4 | `structure` | [FiniteOSAuthorityWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finiteosauthoritywitness.md) | 193 | `declaration-track:7c93a9d8f817e71fb114ac1e90e6f9e1a6bb8a47d37137fd2bcfeccca2f775ae` |
| 5 | `def` | [FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finiteosauthoritywitness-certifiedforfiniteosauthority.md) | 242 | `declaration-track:fda3fe4dd88f0b7abc125de9b33c4334621e5d447add7f4af94fbdf62f2cfe86` |
| 6 | `theorem` | [FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority_of_fields](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finiteosauthoritywitness-certifiedforfiniteosauthority-of-fields.md) | 255 | `result-track:4f5711e763977ef47e787f7ab1ecfdb7517da0b0eafb67bef475679d4d4e3bc9` |
| 7 | `theorem` | [finite_os_objects_authoritative_witness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finite-os-objects-authoritative-witness.md) | 275 | `result-track:c91cbccf586c49e0e03750fc5ee55b68f1ec0fff457098fe74efe6d4101931f9` |
| 8 | `theorem` | [finite_os_objects_authoritative_witness_of_props](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityNamespacedSourceEdition3.lean/declarations/finite-os-objects-authoritative-witness-of-props.md) | 285 | `result-track:368620303aaaab2df58dc960bbd06cc68c608897df392813f7a8de328892b183` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82f854ecda03a5252737252dc1ec763639e84da0b597f65b6326bd7a80c98838 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
