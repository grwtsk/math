# Adelic Spectral Sheaf Adelic Spectral Sheaf — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94fd88f076fc341461c83bdcbb9e86a17ad4dba3` · SHA-256 `e039583f53a5175cad962212af6235aa35a8bc6e78bac882c5c032be7174f858`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.AdelicBase
import Folder.AdelicInfinityTopos.ArchimedeanFiber
import Folder.AdelicInfinityTopos.NonArchimedeanFiber
import Folder.AdelicInfinityTopos.SheafOfSpectra

/-!
# Folder.AdelicInfinityTopos.AdelicSpectralSheaf

Radiation role: research-boundary
BinaryMatrix spine: This module records the primary adelic sheaf-of-spectra contract architecture.
Ontology: adelic.spectral_sheaf
Pivot role: dual
Zero typology: mixed
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure AdelicSpectralSheaf where
  base : AdelicBase
  archFiber : ArchimedeanRodgersTaoFiber
  finiteFiber : Place → Option NonArchimedeanTMFFiber
  Site : ResearchTopos.SiteCategory
  Topology : ResearchTopos.GrothendieckTopology Site
  sheaf : SheafOfSpectra Topology
  localFactorCompatibility : Prop
  localFactorCompatibility_certified : localFactorCompatibility
  archimedeanNonarchimedeanCompatibility : Prop
  productFormulaCompatibility : Prop
  productFormulaCompatibility_certified : productFormulaCompatibility
  globalSpectralDensityCompatibility : Prop

theorem adelic_sheaf_has_hyperdescent
    (S : AdelicSpectralSheaf) :
    S.sheaf.hyperdescent :=
  S.sheaf.hyperdescent_certified

theorem adelic_sheaf_has_local_factor_compatibility
    (S : AdelicSpectralSheaf) :
    S.localFactorCompatibility :=
  S.localFactorCompatibility_certified

theorem adelic_sheaf_has_product_formula_compatibility
    (S : AdelicSpectralSheaf) :
    S.productFormulaCompatibility :=
  S.productFormulaCompatibility_certified

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3c015ab6d21382f76c2d3df0a22b9c0be823b03bf79fb068855d70350930867 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variante039583f53a5175cad962212af6235aa35a8bc6e78bac882c5c032be7174f858.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
