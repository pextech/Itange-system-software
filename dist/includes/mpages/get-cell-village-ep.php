<?php
namespace Phppot;

use Phppot\CellVillage;
if (! empty($_POST["cell_id"])) {
    
    $countryId = $_POST["cell_id"];
    
    require_once __DIR__  'CellVillage.php';
    $countryState = new CountryState();
    $stateResult = $countryState->getVillageByCellId($cellId);
    ?>
<option value="">Select village</option>
<?php
    foreach ($villageResult as $village) {
        ?>
<option value="<?php echo $village["id"]; ?>"><?php echo $village["name"]; ?></option>
<?php
    }
}
?>