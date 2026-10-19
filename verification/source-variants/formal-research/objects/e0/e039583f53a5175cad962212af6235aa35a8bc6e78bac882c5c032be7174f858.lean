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
