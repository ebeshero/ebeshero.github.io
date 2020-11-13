$(document).ready(function () {
    $("#sideNav input").change(function () {
        if (this.checked) {
            $("span." + this.value).css("background-color", getColor(this.value));
        } else {
            $("span." + this.value).css("background-color", "inherit");
        }
    });
});

    function getColor(value) {
        var color;
        switch (value) {
            case 'nellNelson':
            color = '#A3C9A8';
            break;
            case 'unknown':
            case 'unidentified':
            color = 'orange';
            break;
            case 'female':
            color = '#FFAAEA';
            break;
            case 'male':
            color = '#B9CDDA';
            break;
            case 'workingGirl':
            color = 'pink';
            break;
            case 'employee':
            color = '#C695A6'
            break;
            case 'employer':
            color = '#F2DA00';
            break;
            case 'foreperson':
            color = '#725752';
            break;
            case 'benefactor':
            color = '#568EA3';
            break;
            case 'messenger':
            color = '#00A6ED';
            break;
            case 'promMen':
            color = 'blue';
            break;
            case 'promWoman':
            color = 'red';
            break;
            case 'reporter':
            color = 'green';
            break;
        }
        return color;
    }